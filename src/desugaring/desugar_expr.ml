open Core
open Free_obj_vars_expr
open Ast.Ast_types
open Desugar_env

let dedup_free_vars free_vars =
  List.dedup_and_sort
    ~compare:(fun (var_name_1, _, _) (var_name_2, _, _) ->
      if var_name_1 = var_name_2 then 0 else 1)
    free_vars

let desugar_identifier id =
  match id with
  | Typing.Typed_ast.Variable (var_type, var_name) -> Desugared_ast.Variable (var_type, var_name)

let rec desugar_expr  expr =
  (* Helper function since desugar_expr recursive call returns a list not a single expr *)
  match expr with
  | Typing.Typed_ast.Integer (loc, i) -> Desugared_ast.Integer (loc, i)
  | Typing.Typed_ast.Boolean (loc, b) -> Desugared_ast.Boolean (loc, b)
  | Typing.Typed_ast.Identifier (loc, id) ->
      desugar_identifier id
      |> fun desugared_id -> Desugared_ast.Identifier (loc, desugared_id)
  | Typing.Typed_ast.BlockExpr (loc, block_expr) ->
      desugar_block_expr block_expr
      |> fun desugared_block_expr -> Desugared_ast.BlockExpr (loc, desugared_block_expr)
  | Typing.Typed_ast.Let (loc, type_expr, var_name, bound_expr) ->
      desugar_expr bound_expr
      |> fun desugared_bound_expr ->
      Desugared_ast.Let (loc, type_expr, var_name, desugared_bound_expr)
  | Typing.Typed_ast.Assign (loc, type_expr, id, assigned_expr) ->
      desugar_expr_vars assigned_expr
      |> fun desugared_assigned_expr ->
      desugar_identifier id
      |> fun desugared_id ->
      Desugared_ast.Assign (loc, type_expr, desugared_id, desugared_assigned_expr)
  | Typing.Typed_ast.FunctionApp (loc, type_expr, func_name, args) ->
      List.map ~f:(desugar_expr) args
      |> fun desugared_args ->
      Desugared_ast.FunctionApp (loc, type_expr, func_name, desugared_args)
  | Typing.Typed_ast.Printf (loc, format_str, args) ->
      List.map ~f:(desugar_expr) args
      |> fun desugared_args -> Desugared_ast.Printf (loc, format_str, desugared_args)
  | Typing.Typed_ast.If (loc, type_expr, cond_expr, then_expr, else_expr) ->
      desugar_expr cond_expr
      |> fun desugared_cond_expr ->
      desugar_block_expr then_expr
      |> fun desugared_then_expr ->
      desugar_block_expr else_expr
      |> fun desugared_else_expr ->
      Desugared_ast.If
        (loc, type_expr, desugared_cond_expr, desugared_then_expr, desugared_else_expr)
  | Typing.Typed_ast.While (loc, cond_expr, loop_expr) ->
      desugar_expr cond_expr
      |> fun desugared_cond_expr ->
      desugar_block_expr loop_expr
      |> fun desugared_loop_expr ->
      Desugared_ast.While (loc, desugared_cond_expr, desugared_loop_expr)
  | Typing.Typed_ast.BinOp (loc, type_expr, bin_op, expr1, expr2) ->
      desugar_expr expr1
      |> fun desugared_expr1 ->
      desugar_expr expr2
      |> fun desugared_expr2 ->
      Desugared_ast.BinOp (loc, type_expr, bin_op, desugared_expr1, desugared_expr2)
  | Typing.Typed_ast.UnOp (loc, type_expr, un_op, expr) ->
      desugar_expr expr
      |> fun desugared_expr -> Desugared_ast.UnOp (loc, type_expr, un_op, desugared_expr)

and desugar_block_expr
    (Typing.Typed_ast.Block (loc, type_expr, exprs)) =
  List.map ~f:(desugar_expr) exprs
  |> fun desugared_exprs -> Desugared_ast.Block (loc, type_expr, desugared_exprs)
