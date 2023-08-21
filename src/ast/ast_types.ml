open Base

type loc = Lexing.position

let string_of_loc loc =
  Fmt.str "Line:%d Position:%d" loc.Lexing.pos_lnum
    (loc.Lexing.pos_cnum - loc.Lexing.pos_bol + 1)

module type ID = sig
  type t

  val of_string : string -> t
  val to_string : t -> string
  val ( = ) : t -> t -> bool
end

module String_id = struct
  type t = string

  let of_string x = x
  let to_string x = x
  let ( = ) = String.( = )
end

module Var_name : ID = String_id
module Method_name : ID = String_id
module Function_name : ID = String_id

type modifier = MRec

let string_of_modifier = function MRec -> "Rec"

type type_expr =
  | TEInt
  | TEVoid
  | TEBool

let string_of_type = function
  | TEInt -> "Int"
  | TEVoid -> "Void"
  | TEBool -> "Bool"


type param =
  | TParam of type_expr * Var_name.t

let get_params_types params =
  List.map ~f:(fun (TParam (param_type, _)) -> param_type) params


(* BINARY OPERATORS *)
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

let string_of_bin_op = function
  | BinOpPlus          -> "+"
  | BinOpMinus         -> "-"
  | BinOpMult          -> "*"
  | BinOpIntDiv        -> "/"
  | BinOpRem           -> "%"
  | BinOpLessThan      -> "<"
  | BinOpLessThanEq    -> "<="
  | BinOpGreaterThan   -> ">"
  | BinOpGreaterThanEq -> ">="
  | BinOpAnd           -> "&&"
  | BinOpOr            -> "||"
  | BinOpEq            -> "=="
  | BinOpNotEq         -> "!="

type un_op = UnOpNot | UnOpNeg

let string_of_un_op = function UnOpNot -> "!" | UnOpNeg -> "-"