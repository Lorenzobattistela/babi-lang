(** This module pretty prints the typed AST of a babi program *)

val pprint_program : Format.formatter -> Typed_ast.program -> unit
