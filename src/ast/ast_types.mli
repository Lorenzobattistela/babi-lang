(** These are the types used in constructing any AST for a Bolt program. Bolt programs
    consist of a list of class definitions, followed by a list of function definitions and
    finally an expression to execute. *)

type loc = Lexing.position
(** Stores the line and position of the token *)

(** An abstract type for identifiers*)
module type ID = sig
  type t

  val of_string : string -> t
  val to_string : t -> string
  val ( = ) : t -> t -> bool
end

(** We distinguish the different identifiers for variables, classes, traits and fields. *)

module Var_name : ID
module Method_name : ID
module Function_name : ID

type modifier = MRec  (** function is recursive *)

(** Define types of expressions in Bolt programs*)
type type_expr = TEInt | TEVoid | TEBool

(** Parameter of a function *)
type param = TParam of type_expr * Var_name.t

val get_params_types : param list -> type_expr list

(** Binary operators for expressions *)

type bin_op =
  | BinOpPlus
  | BinOpMinus
  | BinOpMult
  | BinOpIntDiv
  | BinOpRem
  | BinOpLessThan
  | BinOpLessThanEq
  | BinOpGreaterThan
  | BinOpGreaterThanEq
  | BinOpAnd
  | BinOpOr
  | BinOpEq
  | BinOpNotEq

type un_op = UnOpNot | UnOpNeg

(** Various helper functions to convert types to equivalent string representations *)

val string_of_loc : loc -> string
val string_of_modifier : modifier -> string
val string_of_type : type_expr -> string
val string_of_bin_op : bin_op -> string
val string_of_un_op : un_op -> string
