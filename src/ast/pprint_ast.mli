(** This module defines a set of pretty printing functions for the parts of the AST that
    are common across the parsed and typed ASTs - to be used by pretty printing functions
    of the two ASTs. They all take in a formatter which specifies output channel e.g. a
    string formatter or a stdout formatter. (Think of this as a generalisation of printf)
    The second argument for all of these is an indent - this corresponds to nesting depth
    within the AST *)

open Ast_types

val pprint_modifier : Format.formatter -> indent:string -> modifier -> unit
val pprint_type_expr : Format.formatter -> indent:string -> type_expr -> unit
val pprint_params : Format.formatter -> indent:string -> param list -> unit
