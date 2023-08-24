open Ast.Ast_types

val free_obj_vars_expr : Typing.Typed_ast.expr -> (Var_name.t * Class_name.t) list

val free_obj_vars_block_expr :
  Typing.Typed_ast.block_expr -> (Var_name.t * Class_name.t) list
