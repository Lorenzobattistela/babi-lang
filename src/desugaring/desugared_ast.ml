
open Ast.Ast_types

type identifier =
  | Variable of type_expr * Var_name.t

let string_of_id id =
  match id with
  | Variable (_, var_name) ->
      Fmt.str "%sVariable: %s"
        (Var_name.to_string var_name)

type expr =
  | Integer     of loc * int (* no need for type_expr annotation as obviously TEInt *)
  | Boolean     of loc * bool (* no need for type_expr annotation as obviously TEBool *)
  | Identifier  of loc * identifier (* Type information associated with identifier *)
  | BlockExpr   of loc * block_expr (* used to interconvert with block expr *)
  | Let         of loc * type_expr * Var_name.t * expr
  | Assign      of loc * type_expr * identifier * expr
  | FunctionApp of loc * type_expr * Function_name.t * expr list
  | Printf      of loc * string * expr list
  | If          of loc * type_expr * expr * block_expr * block_expr
  | While       of loc * expr * block_expr
  | BinOp       of loc * type_expr * bin_op * expr * expr
  | UnOp        of loc * type_expr * un_op * expr

and block_expr = Block of loc * type_expr * expr list


type function_defn =
  | TFunction of
      Function_name.t * modifier option * type_expr * param list * block_expr

(* Each bolt program defines the classes,followed by functions, followed by the main
  expression block to execute. *)
type program = Prog of function_defn list * block_expr