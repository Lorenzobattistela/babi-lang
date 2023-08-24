open Core

let type_program (Parsing.Parsed_ast.Prog (function_defns, main_expr)) =
  let open Result in
  Type_functions.type_function_defns function_defns
  >>= fun typed_function_defns ->
  Type_expr.type_block_expr function_defns main_expr []
  >>| fun (typed_main_expr, _) ->
  Typed_ast.Prog (typed_function_defns, typed_main_expr)

let pprint_typed_ast ppf (prog : Typed_ast.program) = Pprint_tast.pprint_program ppf prog