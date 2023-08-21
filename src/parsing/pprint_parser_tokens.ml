[@@@coverage exclude_file]

(* Since only used as a pprint function by Alcotest - called if lexer tests fail *)

open Parser

let pprint_tokens ppf = function
  | TYPE_INT         -> Fmt.pf ppf "TYPE_INT@."
  | TYPE_BOOL        -> Fmt.pf ppf "TYPE_BOOL@."
  | TYPE_VOID        -> Fmt.pf ppf "TYPE_VOID@."
  | SEMICOLON        -> Fmt.pf ppf "SEMICOLON@."
  | RPAREN           -> Fmt.pf ppf "RPAREN@."
  | RBRACE           -> Fmt.pf ppf "RBRACE@."
  | LPAREN           -> Fmt.pf ppf "LPAREN@."
  | LET              -> Fmt.pf ppf "LET@."
  | LBRACE           -> Fmt.pf ppf "LBRACE@."
  | INT i            -> Fmt.pf ppf "INT(%d)@." i
  | TRUE             -> Fmt.pf ppf "TRUE@."
  | FALSE            -> Fmt.pf ppf "FALSE@."
  | ID var           -> Fmt.pf ppf "ID(%s)@." var
  | FUNCTION         -> Fmt.pf ppf "FUNCTION@."
  | EQUAL            -> Fmt.pf ppf "EQUAL@."
  | EOF              -> Fmt.pf ppf "EOF@."
  | COMMA            -> Fmt.pf ppf "COMMA@."
  | COLON            -> Fmt.pf ppf "COLON@."
  | IF               -> Fmt.pf ppf "IF@."
  | ELSE             -> Fmt.pf ppf "ELSE@."
  | REM              -> Fmt.pf ppf "REM@."
  | PLUS             -> Fmt.pf ppf "PLUS@."
  | OR               -> Fmt.pf ppf "OR@."
  | MULT             -> Fmt.pf ppf "MULT@."
  | MINUS            -> Fmt.pf ppf "MINUS@."
  | LESS_THAN        -> Fmt.pf ppf "LESS_THAN@."
  | GREATER_THAN     -> Fmt.pf ppf "GREATER_THAN@."
  | EXCLAMATION_MARK -> Fmt.pf ppf "EXCLAMATION_MARK@."
  | DIV              -> Fmt.pf ppf "DIV@."
  | AND              -> Fmt.pf ppf "AND@."
  | WHILE            -> Fmt.pf ppf "WHILE@."
  | FOR              -> Fmt.pf ppf "FOR@."
  | MAIN             -> Fmt.pf ppf "MAIN@."
  | PRINTF           -> Fmt.pf ppf "PRINTF@."
  | STRING str       -> Fmt.pf ppf "STRING(%s)@." str
  | RECURSIVE        -> Fmt.pf ppf "RECURSIVE@."