(** This module desugars the typed AST's exprs *)

open Ast.Ast_types

val desugar_expr :
    Typing.Typed_ast.expr
    -> Desugared_ast.expr

val desugar_block_expr :
   Typing.Typed_ast.block_expr
  -> Desugared_ast.block_expr