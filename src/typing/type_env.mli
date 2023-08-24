(** This module consists of helper functions for manipulating the type environment during
    the core language type-checking phase. *)

open Ast.Ast_types
open Core

type type_binding = Var_name.t * type_expr
type type_env = type_binding list

val get_var_type : Var_name.t -> type_env -> loc -> type_expr Or_error.t

val get_function_type :
     Function_name.t
  -> Parsing.Parsed_ast.function_defn list
  -> loc
  -> (type_expr list * type_expr) Or_error.t

(** Checker methods - check invariants *)

val check_no_var_shadowing_in_block :
  Parsing.Parsed_ast.expr list -> loc -> unit Or_error.t

val check_variable_declarable : Var_name.t -> loc -> unit Or_error.t
