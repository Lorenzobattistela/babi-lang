
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | TYPE_VOID
    | TYPE_INT
    | TYPE_BOOL
    | TRUE
    | STRING of (
# 47 "src/parser/parser.mly"
       (string)
# 16 "src/parser/parser.ml"
  )
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
    | INT of (
# 11 "src/parser/parser.mly"
        (int)
# 36 "src/parser/parser.ml"
  )
    | IF
    | ID of (
# 12 "src/parser/parser.mly"
        (string)
# 42 "src/parser/parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState117
  | MenhirState113
  | MenhirState104
  | MenhirState98
  | MenhirState90
  | MenhirState88
  | MenhirState85
  | MenhirState79
  | MenhirState77
  | MenhirState75
  | MenhirState72
  | MenhirState54
  | MenhirState44
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState32
  | MenhirState29
  | MenhirState27
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState15
  | MenhirState10
  | MenhirState3
  | MenhirState0

# 3 "src/parser/parser.mly"
  
  [@@@coverage exclude_file]
  open Ast.Ast_types
  open Parsed_ast

# 107 "src/parser/parser.ml"

let rec _menhir_reduce61 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 112 "src/parser/parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : (
# 66 "src/parser/parser.mly"
      (identifier)
# 118 "src/parser/parser.ml"
    )), _startpos_id_) = _menhir_stack in
    let _startpos = _startpos_id_ in
    let _v : (
# 67 "src/parser/parser.mly"
      (expr)
# 124 "src/parser/parser.ml"
    ) = let _startpos = _startpos_id_ in
    
# 136 "src/parser/parser.mly"
                ( Identifier(_startpos, id))
# 129 "src/parser/parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_bin_op : _menhir_env -> 'ttv_tail -> (
# 72 "src/parser/parser.mly"
      (bin_op)
# 136 "src/parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv473 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 144 "src/parser/parser.ml"
    ) * Lexing.position) * (
# 72 "src/parser/parser.mly"
      (bin_op)
# 148 "src/parser/parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv474)

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 183 "src/parser/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 191 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 199 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 68 "src/parser/parser.mly"
      (expr)
# 206 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 212 "src/parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)) : 'freshtv472)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState27 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 233 "src/parser/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 241 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv461 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 249 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 68 "src/parser/parser.mly"
      (expr)
# 256 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 262 "src/parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)) : 'freshtv464)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv443 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv441 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _startpos__1_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 65 "src/parser/parser.mly"
      (expr list)
# 290 "src/parser/parser.ml"
            ) = let args = 
# 232 "<standard.mly>"
    ( xs )
# 294 "src/parser/parser.ml"
             in
            
# 125 "src/parser/parser.mly"
                                                   (args)
# 299 "src/parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv439) = _menhir_stack in
            let (_v : (
# 65 "src/parser/parser.mly"
      (expr list)
# 306 "src/parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv437 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 312 "src/parser/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 65 "src/parser/parser.mly"
      (expr list)
# 317 "src/parser/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv435 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 323 "src/parser/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let ((fn_args : (
# 65 "src/parser/parser.mly"
      (expr list)
# 328 "src/parser/parser.ml"
            )) : (
# 65 "src/parser/parser.mly"
      (expr list)
# 332 "src/parser/parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (fn : (
# 12 "src/parser/parser.mly"
        (string)
# 337 "src/parser/parser.ml"
            )), _startpos_fn_) = _menhir_stack in
            let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 342 "src/parser/parser.ml"
            ) = let _startpos = _startpos_fn_ in
            
# 144 "src/parser/parser.mly"
                      ( FunctionApp(_startpos, Function_name.of_string fn, fn_args) )
# 347 "src/parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)) : 'freshtv440)) : 'freshtv442)) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv445 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv455 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 362 "src/parser/parser.ml"
        )) * 'tv_option_COMMA_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv451 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 372 "src/parser/parser.ml"
            )) * 'tv_option_COMMA_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv449 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 379 "src/parser/parser.ml"
            )) * 'tv_option_COMMA_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), (format_str : (
# 47 "src/parser/parser.mly"
       (string)
# 384 "src/parser/parser.ml"
            ))), (_4 : 'tv_option_COMMA_)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
            let _6 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 392 "src/parser/parser.ml"
            ) = let args = 
# 232 "<standard.mly>"
    ( xs )
# 396 "src/parser/parser.ml"
             in
            let _startpos = _startpos__1_ in
            
# 145 "src/parser/parser.mly"
                                                                                             (Printf(_startpos, format_str,args))
# 402 "src/parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv453 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 412 "src/parser/parser.ml"
            )) * 'tv_option_COMMA_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
    | _ ->
        _menhir_fail ()

and _menhir_goto_identifier : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 66 "src/parser/parser.mly"
      (identifier)
# 422 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState72 | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 432 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce61 _menhir_env (Obj.magic _menhir_stack) : 'freshtv424)
    | MenhirState104 | MenhirState20 | MenhirState21 | MenhirState27 | MenhirState29 | MenhirState35 | MenhirState37 | MenhirState85 | MenhirState39 | MenhirState77 | MenhirState75 | MenhirState54 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 440 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv429 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 450 "src/parser/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUAL ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv425 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 460 "src/parser/parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXCLAMATION_MARK ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FOR ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | PRINTF ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | WHILE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv426)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv427 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 500 "src/parser/parser.ml"
                ) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
        | AND | COMMA | DIV | EQUAL | EXCLAMATION_MARK | GREATER_THAN | LBRACE | LESS_THAN | MINUS | MULT | OR | PLUS | RBRACE | REM | RPAREN | SEMICOLON ->
            _menhir_reduce61 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv431 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 513 "src/parser/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
    | _ ->
        _menhir_fail ()

and _menhir_goto_bin_op_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 73 "src/parser/parser.mly"
      (expr)
# 523 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 531 "src/parser/parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 546 "src/parser/parser.ml"
        ) = 
# 171 "src/parser/parser.mly"
      (BinOpAnd)
# 550 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv354)) : 'freshtv356)
    | DIV ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 563 "src/parser/parser.ml"
        ) = 
# 165 "src/parser/parser.mly"
      ( BinOpIntDiv )
# 567 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv358)) : 'freshtv360)
    | EQUAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
            ((let _2 = () in
            let _1 = () in
            let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 587 "src/parser/parser.ml"
            ) = 
# 173 "src/parser/parser.mly"
              (BinOpEq)
# 591 "src/parser/parser.ml"
             in
            _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv362)) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv366)) : 'freshtv368)
    | EXCLAMATION_MARK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369 * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _startpos__1_) = _menhir_stack in
            let _2 = () in
            let _1 = () in
            let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 620 "src/parser/parser.ml"
            ) = 
# 174 "src/parser/parser.mly"
                         (BinOpNotEq)
# 624 "src/parser/parser.ml"
             in
            _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv370)) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * Lexing.position) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv374)) : 'freshtv376)
    | GREATER_THAN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
            ((let _2 = () in
            let _1 = () in
            let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 650 "src/parser/parser.ml"
            ) = 
# 170 "src/parser/parser.mly"
                    ( BinOpGreaterThanEq )
# 654 "src/parser/parser.ml"
             in
            _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv378)) : 'freshtv380)
        | FALSE | ID _ | INT _ | LPAREN | TRUE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 664 "src/parser/parser.ml"
            ) = 
# 169 "src/parser/parser.mly"
               ( BinOpGreaterThan )
# 668 "src/parser/parser.ml"
             in
            _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv384)) : 'freshtv386)
    | LESS_THAN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
            ((let _2 = () in
            let _1 = () in
            let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 694 "src/parser/parser.ml"
            ) = 
# 168 "src/parser/parser.mly"
                  ( BinOpLessThanEq )
# 698 "src/parser/parser.ml"
             in
            _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv388)) : 'freshtv390)
        | FALSE | ID _ | INT _ | LPAREN | TRUE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 708 "src/parser/parser.ml"
            ) = 
# 167 "src/parser/parser.mly"
            ( BinOpLessThan )
# 712 "src/parser/parser.ml"
             in
            _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv394)) : 'freshtv396)
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
        let (_startpos__1_ : Lexing.position) = _startpos in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 733 "src/parser/parser.ml"
        ) = 
# 163 "src/parser/parser.mly"
        ( BinOpMinus )
# 737 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv398)) : 'freshtv400)
    | MULT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 750 "src/parser/parser.ml"
        ) = 
# 164 "src/parser/parser.mly"
       ( BinOpMult )
# 754 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv402)) : 'freshtv404)
    | OR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 767 "src/parser/parser.ml"
        ) = 
# 172 "src/parser/parser.mly"
     (BinOpOr)
# 771 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv406)) : 'freshtv408)
    | PLUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 784 "src/parser/parser.ml"
        ) = 
# 162 "src/parser/parser.mly"
       ( BinOpPlus )
# 788 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv410)) : 'freshtv412)
    | REM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 801 "src/parser/parser.ml"
        ) = 
# 166 "src/parser/parser.mly"
      ( BinOpRem )
# 805 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op _menhir_env _menhir_stack _v) : 'freshtv414)) : 'freshtv416)
    | COMMA | LBRACE | RBRACE | RPAREN | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 813 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (bin_op_expr : (
# 73 "src/parser/parser.mly"
      (expr)
# 818 "src/parser/parser.ml"
        )), _startpos_bin_op_expr_) = _menhir_stack in
        let _v : (
# 70 "src/parser/parser.mly"
      (expr)
# 823 "src/parser/parser.ml"
        ) = 
# 155 "src/parser/parser.mly"
                          (bin_op_expr)
# 827 "src/parser/parser.ml"
         in
        _menhir_goto_op_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 837 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)

and _menhir_goto_op_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 70 "src/parser/parser.mly"
      (expr)
# 845 "src/parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 70 "src/parser/parser.mly"
      (expr)
# 854 "src/parser/parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((op_e : (
# 70 "src/parser/parser.mly"
      (expr)
# 862 "src/parser/parser.ml"
    )) : (
# 70 "src/parser/parser.mly"
      (expr)
# 866 "src/parser/parser.ml"
    )) = _v in
    ((let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 871 "src/parser/parser.ml"
    ) = 
# 139 "src/parser/parser.mly"
                (op_e)
# 875 "src/parser/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/parser/parser.mly"
        (string)
# 882 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
    | AND | COMMA | DIV | EQUAL | EXCLAMATION_MARK | GREATER_THAN | LBRACE | LESS_THAN | MINUS | MULT | OR | PLUS | RBRACE | REM | RPAREN | SEMICOLON ->
        _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 900 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "src/parser/parser.mly"
      (expr)
# 908 "src/parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv295 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 918 "src/parser/parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 922 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv293 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 928 "src/parser/parser.ml"
        ) * Lexing.position))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 932 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : (
# 66 "src/parser/parser.mly"
      (identifier)
# 937 "src/parser/parser.ml"
        )), _startpos_id_), _, (assigned_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 941 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 948 "src/parser/parser.ml"
        ) = let _startpos = _startpos_id_ in
        
# 142 "src/parser/parser.mly"
                                                  (Assign(_startpos, id, assigned_expr))
# 953 "src/parser/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 961 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv297 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 971 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXCLAMATION_MARK ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINTF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1011 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv307 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1020 "src/parser/parser.ml"
        ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1024 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv303 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1034 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1038 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXCLAMATION_MARK ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINTF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv305 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1078 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1082 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv313 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1091 "src/parser/parser.ml"
        ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1095 "src/parser/parser.ml"
        ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1099 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv309 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1109 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1113 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1117 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv311 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1135 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1139 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1143 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState27 | MenhirState85 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1152 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1162 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXCLAMATION_MARK ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINTF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv316)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1200 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : (
# 68 "src/parser/parser.mly"
      (expr)
# 1205 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1210 "src/parser/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv319 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1220 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1229 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv324)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv327 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 1245 "src/parser/parser.ml"
        ) * Lexing.position) * 'tv_option_let_type_annot_)) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1249 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv325 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 1255 "src/parser/parser.ml"
        ) * Lexing.position) * 'tv_option_let_type_annot_)) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1259 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), (var_name : (
# 12 "src/parser/parser.mly"
        (string)
# 1264 "src/parser/parser.ml"
        )), _startpos_var_name_), (type_annot : 'tv_option_let_type_annot_)), _, (bound_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 1268 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 1275 "src/parser/parser.ml"
        ) = let _startpos = _startpos__1_ in
        
# 141 "src/parser/parser.mly"
                                                                                (Let(_startpos, type_annot, Var_name.of_string var_name, bound_expr))
# 1280 "src/parser/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1288 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv331 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1298 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1305 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (e : (
# 68 "src/parser/parser.mly"
      (expr)
# 1310 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _v : (
# 67 "src/parser/parser.mly"
      (expr)
# 1318 "src/parser/parser.ml"
            ) = 
# 132 "src/parser/parser.mly"
                       (e)
# 1322 "src/parser/parser.ml"
             in
            _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv330)) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1332 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1341 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv338)
    | MenhirState104 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1357 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv339 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1367 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXCLAMATION_MARK ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FOR ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINTF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv340)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv341 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1405 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : (
# 68 "src/parser/parser.mly"
      (expr)
# 1410 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1415 "src/parser/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv343 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1425 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_COMMA_ : _menhir_env -> 'ttv_tail -> 'tv_option_COMMA_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv291 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 1439 "src/parser/parser.ml"
    )) * 'tv_option_COMMA_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXCLAMATION_MARK ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINTF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv292)

and _menhir_reduce27 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 1478 "src/parser/parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (variable : (
# 12 "src/parser/parser.mly"
        (string)
# 1484 "src/parser/parser.ml"
    )), _startpos_variable_) = _menhir_stack in
    let _startpos = _startpos_variable_ in
    let _v : (
# 66 "src/parser/parser.mly"
      (identifier)
# 1490 "src/parser/parser.ml"
    ) = 
# 128 "src/parser/parser.mly"
              (Variable(Var_name.of_string variable))
# 1494 "src/parser/parser.ml"
     in
    _menhir_goto_identifier _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 1503 "src/parser/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 1510 "src/parser/parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 1521 "src/parser/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/parser/parser.mly"
        (string)
# 1526 "src/parser/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 1534 "src/parser/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let ((field : (
# 12 "src/parser/parser.mly"
        (string)
# 1539 "src/parser/parser.ml"
        )) : (
# 12 "src/parser/parser.mly"
        (string)
# 1543 "src/parser/parser.ml"
        )) = _v in
        let (_startpos_field_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, (obj : (
# 12 "src/parser/parser.mly"
        (string)
# 1549 "src/parser/parser.ml"
        )), _startpos_obj_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_obj_ in
        let _v : (
# 66 "src/parser/parser.mly"
      (identifier)
# 1556 "src/parser/parser.ml"
        ) = 
# 129 "src/parser/parser.mly"
                      (ObjField(Var_name.of_string obj, Field_name.of_string field))
# 1560 "src/parser/parser.ml"
         in
        _menhir_goto_identifier _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv286)) : 'freshtv288)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 1570 "src/parser/parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)

and _menhir_goto_simple_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "src/parser/parser.mly"
      (expr)
# 1578 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * (
# 71 "src/parser/parser.mly"
      (un_op)
# 1587 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 67 "src/parser/parser.mly"
      (expr)
# 1593 "src/parser/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state * (
# 71 "src/parser/parser.mly"
      (un_op)
# 1600 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((e : (
# 67 "src/parser/parser.mly"
      (expr)
# 1606 "src/parser/parser.ml"
        )) : (
# 67 "src/parser/parser.mly"
      (expr)
# 1610 "src/parser/parser.ml"
        )) = _v in
        let (_startpos_e_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, (op : (
# 71 "src/parser/parser.mly"
      (un_op)
# 1616 "src/parser/parser.ml"
        )), _startpos_op_) = _menhir_stack in
        let _v : (
# 70 "src/parser/parser.mly"
      (expr)
# 1621 "src/parser/parser.ml"
        ) = let _startpos = _startpos_op_ in
        
# 154 "src/parser/parser.mly"
                         (UnOp(_startpos,op,e))
# 1626 "src/parser/parser.ml"
         in
        _menhir_goto_op_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | MenhirState104 | MenhirState20 | MenhirState21 | MenhirState27 | MenhirState29 | MenhirState35 | MenhirState37 | MenhirState85 | MenhirState39 | MenhirState77 | MenhirState75 | MenhirState54 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 67 "src/parser/parser.mly"
      (expr)
# 1636 "src/parser/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((e : (
# 67 "src/parser/parser.mly"
      (expr)
# 1645 "src/parser/parser.ml"
        )) : (
# 67 "src/parser/parser.mly"
      (expr)
# 1649 "src/parser/parser.ml"
        )) = _v in
        let (_startpos_e_ : Lexing.position) = _startpos in
        ((let _startpos = _startpos_e_ in
        let _v : (
# 73 "src/parser/parser.mly"
      (expr)
# 1656 "src/parser/parser.ml"
        ) = 
# 179 "src/parser/parser.mly"
                (e)
# 1660 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op_expr _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv278)) : 'freshtv280)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 1668 "src/parser/parser.ml"
        ) * Lexing.position) * (
# 72 "src/parser/parser.mly"
      (bin_op)
# 1672 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 67 "src/parser/parser.mly"
      (expr)
# 1678 "src/parser/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 1685 "src/parser/parser.ml"
        ) * Lexing.position) * (
# 72 "src/parser/parser.mly"
      (bin_op)
# 1689 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((e2 : (
# 67 "src/parser/parser.mly"
      (expr)
# 1695 "src/parser/parser.ml"
        )) : (
# 67 "src/parser/parser.mly"
      (expr)
# 1699 "src/parser/parser.ml"
        )) = _v in
        let (_startpos_e2_ : Lexing.position) = _startpos in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 73 "src/parser/parser.mly"
      (expr)
# 1705 "src/parser/parser.ml"
        )), _startpos_e1_), (op : (
# 72 "src/parser/parser.mly"
      (bin_op)
# 1709 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _startpos = _startpos_e1_ in
        let _v : (
# 73 "src/parser/parser.mly"
      (expr)
# 1715 "src/parser/parser.ml"
        ) = let _startpos = _startpos_e1_ in
        
# 178 "src/parser/parser.mly"
                                          (BinOp(_startpos, op, e1, e2))
# 1720 "src/parser/parser.ml"
         in
        _menhir_goto_bin_op_expr _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv282)) : 'freshtv284)
    | _ ->
        _menhir_fail ()

and _menhir_goto_un_op : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 71 "src/parser/parser.mly"
      (un_op)
# 1729 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271 * _menhir_state * (
# 71 "src/parser/parser.mly"
      (un_op)
# 1737 "src/parser/parser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv272)

and _menhir_goto_option_let_type_annot_ : _menhir_env -> 'ttv_tail -> 'tv_option_let_type_annot_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv269 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 1764 "src/parser/parser.ml"
    ) * Lexing.position) * 'tv_option_let_type_annot_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 1774 "src/parser/parser.ml"
        ) * Lexing.position) * 'tv_option_let_type_annot_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCLAMATION_MARK ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PRINTF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv266)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 1814 "src/parser/parser.ml"
        ) * Lexing.position) * 'tv_option_let_type_annot_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)

and _menhir_goto_separated_nonempty_list_COMMA_param_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_param_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_param_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_param_) : 'tv_separated_nonempty_list_COMMA_param_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_param__ = 
# 144 "<standard.mly>"
    ( x )
# 1834 "src/parser/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_param__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 1842 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_param_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 1850 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_param_) : 'tv_separated_nonempty_list_COMMA_param_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 56 "src/parser/parser.mly"
      (param)
# 1857 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_param_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1863 "src/parser/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_param_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_param__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_param__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv255 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _startpos__1_), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_param__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 55 "src/parser/parser.mly"
      (param list)
# 1889 "src/parser/parser.ml"
        ) = let params = 
# 232 "<standard.mly>"
    ( xs )
# 1893 "src/parser/parser.ml"
         in
        
# 92 "src/parser/parser.mly"
                                                     (params)
# 1898 "src/parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247) = _menhir_stack in
        let (_v : (
# 55 "src/parser/parser.mly"
      (param list)
# 1905 "src/parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv245 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 1912 "src/parser/parser.ml"
        )) * (
# 12 "src/parser/parser.mly"
        (string)
# 1916 "src/parser/parser.ml"
        ) * Lexing.position) * (
# 55 "src/parser/parser.mly"
      (param list)
# 1920 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv246)) : 'freshtv248)) : 'freshtv250)) : 'freshtv252)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv243 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (xs : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 1959 "src/parser/parser.ml"
        ) = let exprs = 
# 232 "<standard.mly>"
    ( xs )
# 1963 "src/parser/parser.ml"
         in
        let _startpos = _startpos__1_ in
        
# 120 "src/parser/parser.mly"
                                                        (Block(_startpos, exprs))
# 1969 "src/parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 1977 "src/parser/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState79 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv191 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1986 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1990 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 1994 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 1998 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv189 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2004 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2008 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2012 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2016 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (init_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 2021 "src/parser/parser.ml"
            ))), _, (cond_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 2025 "src/parser/parser.ml"
            ))), _, (step_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 2029 "src/parser/parser.ml"
            ))), _, (loop_expr : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2033 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 2043 "src/parser/parser.ml"
            ) = let _startpos = _startpos__1_ in
            
# 149 "src/parser/parser.mly"
                                                                                                                  (For(_startpos, init_expr, cond_expr, step_expr, loop_expr))
# 2048 "src/parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
        | MenhirState88 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv197 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2056 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2060 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv193 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2070 "src/parser/parser.ml"
                )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2074 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv194)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv195 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2092 "src/parser/parser.ml"
                )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2096 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
        | MenhirState90 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv201 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2105 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2109 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2113 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv199 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2119 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2123 "src/parser/parser.ml"
            ))) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2127 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (cond_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 2132 "src/parser/parser.ml"
            ))), _, (then_expr : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2136 "src/parser/parser.ml"
            ))), _, (else_expr : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2140 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 2147 "src/parser/parser.ml"
            ) = let _startpos = _startpos__1_ in
            
# 147 "src/parser/parser.mly"
                                                                       (If(_startpos, cond_expr, then_expr, else_expr))
# 2152 "src/parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)
        | MenhirState98 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2160 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2164 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 2170 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2174 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (cond_expr : (
# 68 "src/parser/parser.mly"
      (expr)
# 2179 "src/parser/parser.ml"
            ))), _, (loop_expr : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2183 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 68 "src/parser/parser.mly"
      (expr)
# 2189 "src/parser/parser.ml"
            ) = let _startpos = _startpos__1_ in
            
# 148 "src/parser/parser.mly"
                                             (While(_startpos, cond_expr, loop_expr))
# 2194 "src/parser/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | MenhirState19 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv213 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2202 "src/parser/parser.ml"
            )) * (
# 12 "src/parser/parser.mly"
        (string)
# 2206 "src/parser/parser.ml"
            ) * Lexing.position) * (
# 55 "src/parser/parser.mly"
      (param list)
# 2210 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2214 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv211 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2220 "src/parser/parser.ml"
            )) * (
# 12 "src/parser/parser.mly"
        (string)
# 2224 "src/parser/parser.ml"
            ) * Lexing.position) * (
# 55 "src/parser/parser.mly"
      (param list)
# 2228 "src/parser/parser.ml"
            )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2232 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (recursive : 'tv_option_modifier_)), _, (return_type : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2237 "src/parser/parser.ml"
            ))), (function_name : (
# 12 "src/parser/parser.mly"
        (string)
# 2241 "src/parser/parser.ml"
            )), _startpos_function_name_), (function_params : (
# 55 "src/parser/parser.mly"
      (param list)
# 2245 "src/parser/parser.ml"
            ))), _, (body : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2249 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 58 "src/parser/parser.mly"
      (function_defn)
# 2255 "src/parser/parser.ml"
            ) = 
# 100 "src/parser/parser.mly"
                                                                                                                          (TFunction(Function_name.of_string function_name, recursive, return_type, function_params,body))
# 2259 "src/parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 58 "src/parser/parser.mly"
      (function_defn)
# 2267 "src/parser/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * (
# 58 "src/parser/parser.mly"
      (function_defn)
# 2274 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FUNCTION ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | TYPE_VOID ->
                _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv208)) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)
        | MenhirState113 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv233)) * Lexing.position)) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2292 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv231)) * Lexing.position)) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2298 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _startpos__3_), _, (exprs : (
# 64 "src/parser/parser.mly"
      (block_expr)
# 2303 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2312 "src/parser/parser.ml"
            ) = 
# 117 "src/parser/parser.mly"
                                                    (exprs)
# 2316 "src/parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229) = _menhir_stack in
            let (_v : (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2323 "src/parser/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_list_function_defn_) * (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2330 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_list_function_defn_) * (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2340 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_list_function_defn_) * (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2346 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (function_defns : 'tv_list_function_defn_)), (main : (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2351 "src/parser/parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _v : (
# 51 "src/parser/parser.mly"
      (Parsed_ast.program)
# 2357 "src/parser/parser.ml"
                ) = 
# 82 "src/parser/parser.mly"
                                                            (Prog(function_defns, main))
# 2361 "src/parser/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv219) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 51 "src/parser/parser.mly"
      (Parsed_ast.program)
# 2369 "src/parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 51 "src/parser/parser.mly"
      (Parsed_ast.program)
# 2377 "src/parser/parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv215) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 51 "src/parser/parser.mly"
      (Parsed_ast.program)
# 2385 "src/parser/parser.ml"
                )) : (
# 51 "src/parser/parser.mly"
      (Parsed_ast.program)
# 2389 "src/parser/parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv216)) : 'freshtv218)) : 'freshtv220)) : 'freshtv222)) : 'freshtv224)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_list_function_defn_) * (
# 63 "src/parser/parser.mly"
      (block_expr)
# 2399 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)
        | _ ->
            _menhir_fail ()) : 'freshtv236)) : 'freshtv238)) : 'freshtv240)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXCLAMATION_MARK ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINTF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : (
# 67 "src/parser/parser.mly"
      (expr)
# 2460 "src/parser/parser.ml"
    ) = let _startpos = _startpos__1_ in
    
# 134 "src/parser/parser.mly"
       ( Boolean(_startpos, true))
# 2465 "src/parser/parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv188)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STRING _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 47 "src/parser/parser.mly"
       (string)
# 2489 "src/parser/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
                ((let x = () in
                let _v : 'tv_option_COMMA_ = 
# 116 "<standard.mly>"
    ( Some x )
# 2505 "src/parser/parser.ml"
                 in
                _menhir_goto_option_COMMA_ _menhir_env _menhir_stack _v) : 'freshtv172)) : 'freshtv174)
            | EXCLAMATION_MARK | FALSE | FOR | ID _ | IF | INT _ | LET | LPAREN | MINUS | PRINTF | RPAREN | TRUE | WHILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
                ((let _v : 'tv_option_COMMA_ = 
# 114 "<standard.mly>"
    ( None )
# 2514 "src/parser/parser.ml"
                 in
                _menhir_goto_option_COMMA_ _menhir_env _menhir_stack _v) : 'freshtv176)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv177 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 2524 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : (
# 71 "src/parser/parser.mly"
      (un_op)
# 2555 "src/parser/parser.ml"
    ) = 
# 159 "src/parser/parser.mly"
        (UnOpNeg)
# 2559 "src/parser/parser.ml"
     in
    _menhir_goto_un_op _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv170)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXCLAMATION_MARK ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINTF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/parser/parser.mly"
        (string)
# 2610 "src/parser/parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TYPE_BOOL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | TYPE_INT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | TYPE_VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv160)
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_let_type_annot_ = 
# 114 "<standard.mly>"
    ( None )
# 2641 "src/parser/parser.ml"
             in
            _menhir_goto_option_let_type_annot_ _menhir_env _menhir_stack _v) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 2651 "src/parser/parser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/parser/parser.mly"
        (int)
# 2666 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 11 "src/parser/parser.mly"
        (int)
# 2676 "src/parser/parser.ml"
    )) : (
# 11 "src/parser/parser.mly"
        (int)
# 2680 "src/parser/parser.ml"
    )) = _v in
    let (_startpos_i_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_i_ in
    let _v : (
# 67 "src/parser/parser.mly"
      (expr)
# 2687 "src/parser/parser.ml"
    ) = let _startpos = _startpos_i_ in
    
# 133 "src/parser/parser.mly"
        (Integer(_startpos, i))
# 2692 "src/parser/parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv158)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXCLAMATION_MARK ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINTF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/parser/parser.mly"
        (string)
# 2734 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCLAMATION_MARK ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PRINTF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv154)
    | AND | COLON | COMMA | DIV | EQUAL | EXCLAMATION_MARK | GREATER_THAN | LBRACE | LESS_THAN | MINUS | MULT | OR | PLUS | RBRACE | REM | RPAREN | SEMICOLON ->
        _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * (
# 12 "src/parser/parser.mly"
        (string)
# 2790 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCLAMATION_MARK ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PRINTF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : (
# 67 "src/parser/parser.mly"
      (expr)
# 2857 "src/parser/parser.ml"
    ) = let _startpos = _startpos__1_ in
    
# 135 "src/parser/parser.mly"
        (  Boolean(_startpos, false) )
# 2862 "src/parser/parser.ml"
     in
    _menhir_goto_simple_expr _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv148)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _startpos = _startpos__1_ in
    let _v : (
# 71 "src/parser/parser.mly"
      (un_op)
# 2878 "src/parser/parser.ml"
    ) = 
# 158 "src/parser/parser.mly"
                   (UnOpNot)
# 2882 "src/parser/parser.ml"
     in
    _menhir_goto_un_op _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv146)

and _menhir_goto_type_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2889 "src/parser/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2899 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2909 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "src/parser/parser.mly"
        (string)
# 2914 "src/parser/parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TYPE_BOOL ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                | TYPE_INT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                | TYPE_VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState10 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_param__ = 
# 142 "<standard.mly>"
    ( [] )
# 2944 "src/parser/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_param__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv108)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv109 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2958 "src/parser/parser.ml"
                )) * (
# 12 "src/parser/parser.mly"
        (string)
# 2962 "src/parser/parser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv113 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2973 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
    | MenhirState15 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2982 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv129 * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 2992 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "src/parser/parser.mly"
        (string)
# 2997 "src/parser/parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv127 * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3005 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            let ((param_name : (
# 12 "src/parser/parser.mly"
        (string)
# 3010 "src/parser/parser.ml"
            )) : (
# 12 "src/parser/parser.mly"
        (string)
# 3014 "src/parser/parser.ml"
            )) = _v in
            let (_startpos_param_name_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, (param_type : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3020 "src/parser/parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 56 "src/parser/parser.mly"
      (param)
# 3025 "src/parser/parser.ml"
            ) = 
# 96 "src/parser/parser.mly"
                                        (TParam(param_type, Var_name.of_string param_name))
# 3029 "src/parser/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv125) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 56 "src/parser/parser.mly"
      (param)
# 3037 "src/parser/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 3044 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 3054 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TYPE_BOOL ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | TYPE_INT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | TYPE_VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv118)
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 3076 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : (
# 56 "src/parser/parser.mly"
      (param)
# 3081 "src/parser/parser.ml"
                ))) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_param_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3086 "src/parser/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_param_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 3096 "src/parser/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)) : 'freshtv124)) : 'freshtv126)) : 'freshtv128)) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131 * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3107 "src/parser/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3116 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3122 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (type_annot : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3127 "src/parser/parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 61 "src/parser/parser.mly"
      (type_expr)
# 3133 "src/parser/parser.ml"
        ) = 
# 112 "src/parser/parser.mly"
                               (type_annot)
# 3137 "src/parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139) = _menhir_stack in
        let (_v : (
# 61 "src/parser/parser.mly"
      (type_expr)
# 3144 "src/parser/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
        let (_v : (
# 61 "src/parser/parser.mly"
      (type_expr)
# 3151 "src/parser/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
        let ((x : (
# 61 "src/parser/parser.mly"
      (type_expr)
# 3158 "src/parser/parser.ml"
        )) : (
# 61 "src/parser/parser.mly"
      (type_expr)
# 3162 "src/parser/parser.ml"
        )) = _v in
        ((let _v : 'tv_option_let_type_annot_ = 
# 116 "<standard.mly>"
    ( Some x )
# 3167 "src/parser/parser.ml"
         in
        _menhir_goto_option_let_type_annot_ _menhir_env _menhir_stack _v) : 'freshtv136)) : 'freshtv138)) : 'freshtv140)) : 'freshtv142)) : 'freshtv144)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXCLAMATION_MARK ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINTF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState20 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 3215 "src/parser/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3233 "src/parser/parser.ml"
    ) = 
# 109 "src/parser/parser.mly"
            (TEVoid)
# 3237 "src/parser/parser.ml"
     in
    _menhir_goto_type_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3251 "src/parser/parser.ml"
    ) = 
# 107 "src/parser/parser.mly"
            (TEInt)
# 3255 "src/parser/parser.ml"
     in
    _menhir_goto_type_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3269 "src/parser/parser.ml"
    ) = 
# 108 "src/parser/parser.mly"
            (TEBool)
# 3273 "src/parser/parser.ml"
     in
    _menhir_goto_type_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/parser/parser.mly"
        (string)
# 3280 "src/parser/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((class_name : (
# 12 "src/parser/parser.mly"
        (string)
# 3290 "src/parser/parser.ml"
    )) : (
# 12 "src/parser/parser.mly"
        (string)
# 3294 "src/parser/parser.ml"
    )) = _v in
    let (_startpos_class_name_ : Lexing.position) = _startpos in
    ((let _v : (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3300 "src/parser/parser.ml"
    ) = 
# 106 "src/parser/parser.mly"
                (TEClass(Class_name.of_string class_name))
# 3304 "src/parser/parser.ml"
     in
    _menhir_goto_type_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)

and _menhir_goto_list_function_defn_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_function_defn_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_list_function_defn_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYPE_VOID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MAIN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv77)) = Obj.magic _menhir_stack in
                    let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    ((let _menhir_stack = (_menhir_stack, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RPAREN ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (('freshtv73)) * Lexing.position) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | LBRACE ->
                            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv74)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (('freshtv75)) * Lexing.position) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv76)) : 'freshtv78)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv79)) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv80)) : 'freshtv82)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv84)) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_list_function_defn_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 58 "src/parser/parser.mly"
      (function_defn)
# 3380 "src/parser/parser.ml"
        )) * _menhir_state * 'tv_list_function_defn_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 58 "src/parser/parser.mly"
      (function_defn)
# 3386 "src/parser/parser.ml"
        )) * _menhir_state * 'tv_list_function_defn_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 58 "src/parser/parser.mly"
      (function_defn)
# 3391 "src/parser/parser.ml"
        ))), _, (xs : 'tv_list_function_defn_)) = _menhir_stack in
        let _v : 'tv_list_function_defn_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3396 "src/parser/parser.ml"
         in
        _menhir_goto_list_function_defn_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_modifier_ : _menhir_env -> 'ttv_tail -> 'tv_option_modifier_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv71 * _menhir_state) * 'tv_option_modifier_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TYPE_BOOL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TYPE_INT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TYPE_VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv72)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 58 "src/parser/parser.mly"
      (function_defn)
# 3431 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv19)) * Lexing.position)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv20)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3444 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3453 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv25 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3462 "src/parser/parser.ml"
        )) * _menhir_state * (
# 64 "src/parser/parser.mly"
      (block_expr)
# 3466 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3475 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3484 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv31 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3493 "src/parser/parser.ml"
        ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3497 "src/parser/parser.ml"
        ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3501 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv33 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3510 "src/parser/parser.ml"
        ))) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3514 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * (
# 68 "src/parser/parser.mly"
      (expr)
# 3523 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * (
# 73 "src/parser/parser.mly"
      (expr)
# 3532 "src/parser/parser.ml"
        ) * Lexing.position) * (
# 72 "src/parser/parser.mly"
      (bin_op)
# 3536 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state * (
# 66 "src/parser/parser.mly"
      (identifier)
# 3545 "src/parser/parser.ml"
        ) * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * (
# 71 "src/parser/parser.mly"
      (un_op)
# 3554 "src/parser/parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv46)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv49 * _menhir_state * Lexing.position) * (
# 12 "src/parser/parser.mly"
        (string)
# 3577 "src/parser/parser.ml"
        ) * Lexing.position) * 'tv_option_let_type_annot_)) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv52)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state * Lexing.position) * Lexing.position) * (
# 47 "src/parser/parser.mly"
       (string)
# 3595 "src/parser/parser.ml"
        )) * 'tv_option_COMMA_) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _), _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state) * 'tv_option_modifier_) * _menhir_state * (
# 60 "src/parser/parser.mly"
      (type_expr)
# 3614 "src/parser/parser.ml"
        )) * (
# 12 "src/parser/parser.mly"
        (string)
# 3618 "src/parser/parser.ml"
        ) * Lexing.position) * (
# 55 "src/parser/parser.mly"
      (param list)
# 3622 "src/parser/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * (
# 56 "src/parser/parser.mly"
      (param)
# 3631 "src/parser/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv66)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state) * 'tv_option_modifier_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_function_defn_ = 
# 211 "<standard.mly>"
    ( [] )
# 3654 "src/parser/parser.ml"
     in
    _menhir_goto_list_function_defn_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RECURSIVE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 54 "src/parser/parser.mly"
      (modifier)
# 3674 "src/parser/parser.ml"
        ) = 
# 86 "src/parser/parser.mly"
            ( MRec )
# 3678 "src/parser/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = _menhir_stack in
        let (_v : (
# 54 "src/parser/parser.mly"
      (modifier)
# 3685 "src/parser/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let (_v : (
# 54 "src/parser/parser.mly"
      (modifier)
# 3692 "src/parser/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let ((x : (
# 54 "src/parser/parser.mly"
      (modifier)
# 3699 "src/parser/parser.ml"
        )) : (
# 54 "src/parser/parser.mly"
      (modifier)
# 3703 "src/parser/parser.ml"
        )) = _v in
        ((let _v : 'tv_option_modifier_ = 
# 116 "<standard.mly>"
    ( Some x )
# 3708 "src/parser/parser.ml"
         in
        _menhir_goto_option_modifier_ _menhir_env _menhir_stack _v) : 'freshtv4)) : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)
    | ID _ | TYPE_BOOL | TYPE_INT | TYPE_VOID ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_modifier_ = 
# 114 "<standard.mly>"
    ( None )
# 3717 "src/parser/parser.ml"
         in
        _menhir_goto_option_modifier_ _menhir_env _menhir_stack _v) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 51 "src/parser/parser.mly"
      (Parsed_ast.program)
# 3743 "src/parser/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUNCTION ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPE_VOID ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 3774 "src/parser/parser.ml"
