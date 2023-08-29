open Core
open Desugar_expr
open Desugar_function_defns
open Remove_variable_shadowing
open Pprint_dast

let desugar_program (Typing.Typed_ast.Prog ( function_defns, main_expr)) =
  List.map ~f:(desugar_function_defn) function_defns
  |> fun desugared_function_defns ->
  desugar_block_expr main_expr
  |> fun desugared_main_expr ->
  let desugared_program =
    Desugared_ast.Prog
      (desugared_function_defns, desugared_main_expr) in
  remove_var_shadowing_program desugared_program

let pprint_desugared_ast ppf prog = pprint_program ppf prog