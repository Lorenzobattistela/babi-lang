open Ast.Ast_types
open Desugared_ast
open Ast.Pprint_ast
open Core

let indent_space = "   "

let rec pprint_expr ppf ~indent expr =
  let print_expr = Fmt.pf ppf "%sExpr: %s@." indent in
  let new_indent = indent_space ^ indent in
  match expr with
  | Integer (_, i) -> print_expr (Fmt.str "Int:%d" i)
  | Boolean (_, b) -> print_expr (Fmt.str "Bool:%b" b)
  | Identifier (_, id) -> (
    match id with
    | Variable (var_type, _) -> (
        print_expr (string_of_id id) ;
        pprint_type_expr ppf ~indent:new_indent var_type ;
      )
    )
  | BlockExpr (_, block_expr) ->
      pprint_block_expr ppf ~indent:new_indent ~block_name:"" block_expr
  | Let (_, type_expr, var_name, bound_expr) ->
      print_expr (Fmt.str "Let var: %s" (Var_name.to_string var_name)) ;
      pprint_type_expr ppf ~indent:new_indent type_expr ;
      pprint_expr ppf ~indent:new_indent bound_expr
  | Assign (loc, type_expr, id, assigned_expr) ->
      print_expr "Assign" ;
      pprint_type_expr ppf ~indent:new_indent type_expr ;
      pprint_expr ppf ~indent:new_indent (Identifier (loc, id)) ;
      pprint_expr ppf ~indent:new_indent assigned_expr
  | FunctionApp (_, type_expr, func_name, args) ->
      print_expr "Function App" ;
      pprint_type_expr ppf ~indent:new_indent type_expr ;
      Fmt.pf ppf "%sFunction: %s@." new_indent (Function_name.to_string func_name) ;
      pprint_args ppf ~indent:new_indent args
  | Printf (_, format_str, args) ->
      print_expr "Printf" ;
      Fmt.pf ppf "%s%s@." new_indent format_str ;
      pprint_args ppf ~indent:new_indent args
  | If (_, type_expr, cond_expr, then_expr, else_expr) ->
      print_expr "If" ;
      pprint_type_expr ppf ~indent:new_indent type_expr ;
      pprint_expr ppf ~indent:new_indent cond_expr ;
      pprint_block_expr ppf ~indent:new_indent ~block_name:"Then" then_expr ;
      pprint_block_expr ppf ~indent:new_indent ~block_name:"Else" else_expr
  | While (_, cond_expr, loop_expr) ->
      print_expr "While" ;
      pprint_type_expr ppf ~indent:new_indent TEVoid ;
      pprint_expr ppf ~indent:new_indent cond_expr ;
      pprint_block_expr ppf ~indent:new_indent ~block_name:"Body" loop_expr
  | BinOp (_, type_expr, bin_op, expr1, expr2) ->
      print_expr (Fmt.str "Bin Op: %s" (string_of_bin_op bin_op)) ;
      pprint_type_expr ppf ~indent:new_indent type_expr ;
      pprint_expr ppf ~indent:new_indent expr1 ;
      pprint_expr ppf ~indent:new_indent expr2
  | UnOp (_, type_expr, un_op, expr) ->
      print_expr (Fmt.str "Unary Op: %s" (string_of_un_op un_op)) ;
      pprint_type_expr ppf ~indent:new_indent type_expr ;
      pprint_expr ppf ~indent:new_indent expr

and pprint_args ppf ~indent = function
  | []   -> Fmt.pf ppf "%s()@." indent
  | args -> List.iter ~f:(pprint_expr ppf ~indent) args

and pprint_block_expr ppf ~indent ~block_name (Block (_, type_expr, exprs)) =
  let new_indent = indent_space ^ indent in
  if block_name = "" then List.iter ~f:(pprint_expr ppf ~indent) exprs
  else (
    Fmt.pf ppf "%s%s block@." indent block_name ;
    pprint_type_expr ppf ~indent:new_indent type_expr ;
    List.iter ~f:(pprint_expr ppf ~indent:new_indent) exprs )
  
let pprint_function_defn ppf ~indent
    (TFunction (func_name,maybe_recursive, return_type, params, body_expr)) =
  let new_indent = indent_space ^ indent in
  let string_of_,maybe_recursive =
    match maybe_recursive with Some MRec -> "Recursive " | None -> "" in
  Fmt.pf ppf "%s Function: %s@." indent (Function_name.to_string func_name) ;
  Fmt.pf ppf "%s Return type: %s%s@." new_indent string_of_,maybe_recursive
    (string_of_type return_type) ;
  pprint_params ppf ~indent:new_indent params ;
  pprint_block_expr ppf ~indent:new_indent ~block_name:"Body" body_expr

let pprint_program ppf (Prog (function_defns, main_expr)) =
  Fmt.pf ppf "Program@." ;
  let indent = "└──" in
  List.iter ~f:(pprint_function_defn ppf ~indent) function_defns ;
  pprint_block_expr ppf ~indent ~block_name:"Main" main_expr
