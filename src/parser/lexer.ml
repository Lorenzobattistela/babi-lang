# 1 "src/parser/lexer.mll"
 
  (* Inside these curly braces we define helper functions that are    
     exposed to our OCaml source code
   *)

  open Lexing
  open Parser

  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_bol = lexbuf.lex_curr_pos;
                pos_lnum = pos.pos_lnum + 1
      }

# 20 "src/parser/lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\214\255\215\255\216\255\001\000\217\255\078\000\153\000\
    \021\000\007\000\163\000\238\000\057\001\132\001\207\001\026\002\
    \101\002\176\002\251\002\070\003\145\003\237\255\012\000\026\000\
    \240\255\241\255\242\255\243\255\244\255\220\003\246\255\247\255\
    \248\255\249\255\250\255\251\255\252\255\253\255\254\255\255\255\
    \239\255\238\255\218\255\021\000\236\255\024\000\031\000\030\000\
    \042\000\026\000\064\000\059\000\061\000\235\255\057\000\073\000\
    \230\255\226\255\228\255\105\000\234\255\111\000\115\000\233\255\
    \119\000\125\000\232\255\109\000\126\000\231\255\149\000\147\000\
    \156\000\229\255\144\000\195\000\227\255\192\000\188\000\225\255\
    \194\000\190\000\185\000\200\000\224\255\230\000\223\255\220\255\
    \043\003\253\255\254\255\255\255\002\000\044\003\252\255\253\255\
    \254\255\004\000\001\000\255\255\042\001\252\255\044\001\255\255\
    ";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\039\000\255\255\041\000\036\000\
    \034\000\033\000\041\000\041\000\041\000\041\000\041\000\041\000\
    \041\000\041\000\041\000\041\000\041\000\255\255\041\000\041\000\
    \255\255\255\255\255\255\255\255\255\255\010\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\037\000\255\255\037\000\037\000\037\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\037\000\255\255\037\000\255\255\255\255\
    \037\000\255\255\255\255\037\000\255\255\255\255\037\000\255\255\
    \255\255\255\255\037\000\255\255\255\255\037\000\255\255\255\255\
    \037\000\255\255\255\255\255\255\255\255\037\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
    \255\255\001\000\003\000\255\255\255\255\255\255\001\000\255\255\
    ";
  Lexing.lex_default =
   "\001\000\000\000\000\000\000\000\255\255\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\000\000\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\000\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\000\000\255\255\255\255\
    \000\000\000\000\000\000\255\255\000\000\255\255\255\255\000\000\
    \255\255\255\255\000\000\255\255\255\255\000\000\255\255\255\255\
    \255\255\000\000\255\255\255\255\000\000\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\000\000\255\255\000\000\000\000\
    \089\000\000\000\000\000\000\000\255\255\094\000\000\000\000\000\
    \000\000\255\255\255\255\000\000\102\000\000\000\102\000\000\000\
    ";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\009\000\003\000\003\000\091\000\004\000\096\000\000\000\
    \009\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \009\000\021\000\005\000\008\000\099\000\026\000\023\000\009\000\
    \039\000\038\000\028\000\030\000\035\000\029\000\034\000\027\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\033\000\032\000\025\000\031\000\024\000\087\000\
    \040\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\006\000\017\000\006\000\006\000\013\000\019\000\006\000\
    \006\000\018\000\006\000\006\000\020\000\012\000\006\000\006\000\
    \011\000\006\000\010\000\006\000\015\000\006\000\016\000\014\000\
    \006\000\006\000\006\000\037\000\022\000\036\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \041\000\044\000\057\000\054\000\048\000\049\000\050\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\051\000\052\000\053\000\055\000\042\000\056\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\060\000\062\000\063\000\
    \065\000\066\000\068\000\069\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\071\000\072\000\
    \002\000\073\000\042\000\075\000\042\000\042\000\042\000\042\000\
    \085\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \076\000\078\000\079\000\081\000\082\000\083\000\084\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\086\000\000\000\000\000\103\000\042\000\255\255\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \080\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\000\000\000\000\000\000\000\000\
    \042\000\000\000\077\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\000\000\
    \000\000\000\000\000\000\042\000\000\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \074\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\101\000\000\000\255\255\000\000\042\000\000\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\070\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\000\000\000\000\000\000\
    \000\000\042\000\000\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\067\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \000\000\000\000\000\000\000\000\042\000\000\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\064\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\000\000\000\000\000\000\000\000\042\000\
    \000\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\061\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\091\000\096\000\000\000\
    \092\000\097\000\000\000\000\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\098\000\000\000\
    \000\000\000\000\042\000\000\000\042\000\042\000\042\000\042\000\
    \042\000\058\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\059\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\000\000\000\000\000\000\000\000\042\000\000\000\046\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\045\000\042\000\042\000\
    \042\000\042\000\042\000\047\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\000\000\000\000\000\000\000\000\
    \042\000\000\000\042\000\042\000\042\000\042\000\043\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\042\000\042\000\042\000\042\000\
    \042\000\042\000\042\000\042\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\090\000\095\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\004\000\092\000\000\000\097\000\255\255\
    \009\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\098\000\000\000\000\000\009\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\008\000\
    \023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \022\000\043\000\045\000\046\000\047\000\048\000\049\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\050\000\051\000\052\000\054\000\006\000\055\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\059\000\061\000\062\000\
    \064\000\065\000\067\000\068\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\070\000\071\000\
    \000\000\072\000\010\000\074\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \075\000\077\000\078\000\080\000\081\000\082\000\083\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\085\000\255\255\255\255\100\000\011\000\102\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\255\255\255\255\255\255\255\255\
    \012\000\255\255\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\012\000\012\000\012\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\255\255\
    \255\255\255\255\255\255\013\000\255\255\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\014\000\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\014\000\100\000\255\255\102\000\255\255\014\000\255\255\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
    \014\000\014\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\255\255\255\255\255\255\
    \255\255\015\000\255\255\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \255\255\255\255\255\255\255\255\016\000\255\255\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \016\000\016\000\016\000\016\000\016\000\016\000\016\000\016\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\255\255\255\255\255\255\255\255\017\000\
    \255\255\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
    \017\000\017\000\017\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\088\000\093\000\255\255\
    \088\000\093\000\255\255\255\255\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\093\000\255\255\
    \255\255\255\255\018\000\255\255\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\255\255\255\255\255\255\255\255\019\000\255\255\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\255\255\255\255\255\255\255\255\
    \020\000\255\255\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\029\000\029\000\029\000\029\000\
    \029\000\029\000\029\000\029\000\029\000\029\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\088\000\093\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec read_token lexbuf =
   __ocaml_lex_read_token_rec lexbuf 0
and __ocaml_lex_read_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 30 "src/parser/lexer.mll"
        ( LPAREN )
# 402 "src/parser/lexer.ml"

  | 1 ->
# 31 "src/parser/lexer.mll"
        ( RPAREN )
# 407 "src/parser/lexer.ml"

  | 2 ->
# 32 "src/parser/lexer.mll"
        ( LBRACE )
# 412 "src/parser/lexer.ml"

  | 3 ->
# 33 "src/parser/lexer.mll"
        ( RBRACE )
# 417 "src/parser/lexer.ml"

  | 4 ->
# 34 "src/parser/lexer.mll"
        ( COMMA )
# 422 "src/parser/lexer.ml"

  | 5 ->
# 35 "src/parser/lexer.mll"
        ( DOT )
# 427 "src/parser/lexer.ml"

  | 6 ->
# 36 "src/parser/lexer.mll"
        ( COLON )
# 432 "src/parser/lexer.ml"

  | 7 ->
# 37 "src/parser/lexer.mll"
        ( SEMICOLON )
# 437 "src/parser/lexer.ml"

  | 8 ->
# 38 "src/parser/lexer.mll"
        ( EQUAL )
# 442 "src/parser/lexer.ml"

  | 9 ->
# 39 "src/parser/lexer.mll"
        ( PLUS )
# 447 "src/parser/lexer.ml"

  | 10 ->
# 40 "src/parser/lexer.mll"
        ( MINUS )
# 452 "src/parser/lexer.ml"

  | 11 ->
# 41 "src/parser/lexer.mll"
        ( MULT )
# 457 "src/parser/lexer.ml"

  | 12 ->
# 42 "src/parser/lexer.mll"
        ( DIV )
# 462 "src/parser/lexer.ml"

  | 13 ->
# 43 "src/parser/lexer.mll"
        ( REM )
# 467 "src/parser/lexer.ml"

  | 14 ->
# 44 "src/parser/lexer.mll"
        ( LESS_THAN )
# 472 "src/parser/lexer.ml"

  | 15 ->
# 45 "src/parser/lexer.mll"
        ( GREATER_THAN )
# 477 "src/parser/lexer.ml"

  | 16 ->
# 46 "src/parser/lexer.mll"
         ( AND )
# 482 "src/parser/lexer.ml"

  | 17 ->
# 47 "src/parser/lexer.mll"
         ( OR )
# 487 "src/parser/lexer.ml"

  | 18 ->
# 48 "src/parser/lexer.mll"
        ( EXCLAMATION_MARK )
# 492 "src/parser/lexer.ml"

  | 19 ->
# 49 "src/parser/lexer.mll"
          ( LET )
# 497 "src/parser/lexer.ml"

  | 20 ->
# 50 "src/parser/lexer.mll"
               ( FUNCTION )
# 502 "src/parser/lexer.ml"

  | 21 ->
# 51 "src/parser/lexer.mll"
          ( TYPE_INT )
# 507 "src/parser/lexer.ml"

  | 22 ->
# 52 "src/parser/lexer.mll"
           ( TYPE_BOOL )
# 512 "src/parser/lexer.ml"

  | 23 ->
# 53 "src/parser/lexer.mll"
           ( TYPE_VOID )
# 517 "src/parser/lexer.ml"

  | 24 ->
# 54 "src/parser/lexer.mll"
           ( TRUE )
# 522 "src/parser/lexer.ml"

  | 25 ->
# 55 "src/parser/lexer.mll"
            ( FALSE )
# 527 "src/parser/lexer.ml"

  | 26 ->
# 56 "src/parser/lexer.mll"
            ( WHILE )
# 532 "src/parser/lexer.ml"

  | 27 ->
# 57 "src/parser/lexer.mll"
         ( IF )
# 537 "src/parser/lexer.ml"

  | 28 ->
# 58 "src/parser/lexer.mll"
           ( ELSE )
# 542 "src/parser/lexer.ml"

  | 29 ->
# 59 "src/parser/lexer.mll"
          ( FOR )
# 547 "src/parser/lexer.ml"

  | 30 ->
# 60 "src/parser/lexer.mll"
           ( MAIN )
# 552 "src/parser/lexer.ml"

  | 31 ->
# 61 "src/parser/lexer.mll"
             ( PRINTF )
# 557 "src/parser/lexer.ml"

  | 32 ->
# 62 "src/parser/lexer.mll"
          ( RECURSIVE )
# 562 "src/parser/lexer.ml"

  | 33 ->
# 63 "src/parser/lexer.mll"
               ( read_token lexbuf )
# 567 "src/parser/lexer.ml"

  | 34 ->
# 64 "src/parser/lexer.mll"
        ( single_line_comment lexbuf )
# 572 "src/parser/lexer.ml"

  | 35 ->
# 65 "src/parser/lexer.mll"
         ( multi_line_comment lexbuf )
# 577 "src/parser/lexer.ml"

  | 36 ->
# 66 "src/parser/lexer.mll"
        ( INT (int_of_string (Lexing.lexeme lexbuf)))
# 582 "src/parser/lexer.ml"

  | 37 ->
# 67 "src/parser/lexer.mll"
       ( ID (Lexing.lexeme lexbuf))
# 587 "src/parser/lexer.ml"

  | 38 ->
# 68 "src/parser/lexer.mll"
        ( read_string (Buffer.create 18) lexbuf)
# 592 "src/parser/lexer.ml"

  | 39 ->
# 69 "src/parser/lexer.mll"
            ( next_line lexbuf; read_token lexbuf )
# 597 "src/parser/lexer.ml"

  | 40 ->
# 70 "src/parser/lexer.mll"
        ( EOF )
# 602 "src/parser/lexer.ml"

  | 41 ->
# 71 "src/parser/lexer.mll"
      ( raise (SyntaxError("Illegal character: " ^ Lexing.lexeme lexbuf)))
# 607 "src/parser/lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_read_token_rec lexbuf __ocaml_lex_state

and single_line_comment lexbuf =
   __ocaml_lex_single_line_comment_rec lexbuf 88
and __ocaml_lex_single_line_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 74 "src/parser/lexer.mll"
            ( next_line lexbuf; read_token lexbuf )
# 619 "src/parser/lexer.ml"

  | 1 ->
# 75 "src/parser/lexer.mll"
        ( EOF )
# 624 "src/parser/lexer.ml"

  | 2 ->
# 76 "src/parser/lexer.mll"
      ( single_line_comment lexbuf )
# 629 "src/parser/lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_single_line_comment_rec lexbuf __ocaml_lex_state

and multi_line_comment lexbuf =
   __ocaml_lex_multi_line_comment_rec lexbuf 93
and __ocaml_lex_multi_line_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 79 "src/parser/lexer.mll"
         ( read_token lexbuf )
# 641 "src/parser/lexer.ml"

  | 1 ->
# 80 "src/parser/lexer.mll"
            ( next_line lexbuf; multi_line_comment lexbuf )
# 646 "src/parser/lexer.ml"

  | 2 ->
# 81 "src/parser/lexer.mll"
        ( raise SyntaxError ("Unexpected EOF - terminate your comment."))
# 651 "src/parser/lexer.ml"

  | 3 ->
# 82 "src/parser/lexer.mll"
      ( multi_line_comment lexbuf )
# 656 "src/parser/lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_multi_line_comment_rec lexbuf __ocaml_lex_state

and read_string buf lexbuf =
   __ocaml_lex_read_string_rec buf lexbuf 100
and __ocaml_lex_read_string_rec buf lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 85 "src/parser/lexer.mll"
        ( STRING (Buffer.contents buf))
# 668 "src/parser/lexer.ml"

  | 1 ->
# 86 "src/parser/lexer.mll"
             ( Buffer.add_string buf (Lexing.lexeme lexbuf); read_string buf lexbuf )
# 673 "src/parser/lexer.ml"

  | 2 ->
# 87 "src/parser/lexer.mll"
      ( raise (SyntaxError("Illegal string character: " ^ Lexing.lexeme lexbuf)) )
# 678 "src/parser/lexer.ml"

  | 3 ->
# 88 "src/parser/lexer.mll"
        ( raise (SyntaxError("String is not terminated.")) )
# 683 "src/parser/lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_read_string_rec buf lexbuf __ocaml_lex_state

;;
