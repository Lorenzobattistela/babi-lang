open Core

val parse_program : Lexing.lexbuf -> Parsed_ast.program Or_error.t
val pprint_parsed_ast : Format.formatter -> Parsed_ast.program -> unit
