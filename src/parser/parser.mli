
(* The type of tokens. *)

type token = 
  | WHILE
  | TYPE_VOID
  | TYPE_INT
  | TYPE_BOOL
  | TRUE
  | STRING of (string)
  | SEMICOLON
  | RPAREN
  | REM
  | RECURSIVE
  | RBRACE
  | PRINTF
  | PLUS
  | OR
  | MULT
  | MINUS
  | MAIN
  | LPAREN
  | LET
  | LESS_THAN
  | LBRACE
  | INT of (int)
  | IF
  | ID of (string)
  | GREATER_THAN
  | FUNCTION
  | FOR
  | FALSE
  | EXCLAMATION_MARK
  | EQUAL
  | EOF
  | ELSE
  | DOT
  | DIV
  | COMMA
  | COLON
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Parsed_ast.program)
