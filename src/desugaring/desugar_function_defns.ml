open Desugar_expr

let desugar_function_defn
    (Typing.Typed_ast.TFunction
      (func_name, maybe_recursive, ret_type, params, body_expr)) =
  desugar_block_expr body_expr
  |> fun desugared_body_expr ->
  Desugared_ast.TFunction
    (func_name, maybe_recursive, ret_type, params, desugared_body_expr)