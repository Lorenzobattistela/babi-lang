open Ast.Ast_types
(** Infer type parsed expressions given the function definitions - return the expression
    annotated with types if type-checking succeeds. *)

open Core
open Type_env

val type_expr :
     Parsing.Parsed_ast.function_defn list
  -> Parsing.Parsed_ast.expr
  -> type_env
  -> (Typed_ast.expr * type_expr) Or_error.t

val type_block_expr :
     Parsing.Parsed_ast.function_defn list
  -> Parsing.Parsed_ast.block_expr
  -> type_env
  -> (Typed_ast.block_expr * type_expr) Or_error.t
