
open Ast.Ast_types

type identifier =
  | Variable of type_expr * Var_name.t

val string_of_id : identifier -> string

(* Similar to Parsed AST, only we add an extra type_expr annotation to denote the overall
   type of the expression. For loop is desugared to while loop *)
type expr =
  | Integer     of loc * int
  | Boolean     of loc * bool
  | Identifier  of loc * identifier (* Type information associated with identifier *)
  | BlockExpr   of loc * block_expr (* used to interconvert with block expr *)
  | Let         of loc * type_expr * Var_name.t * expr
  | Assign      of loc * type_expr * identifier * expr
  | FunctionApp of loc * type_expr * Function_name.t * expr list
  | Printf      of loc * string * expr list
  | If          of loc * type_expr * expr * block_expr * block_expr
  (* If ___ then ___ else ___ - type is that of the branch exprs *)
  | While       of loc * expr * block_expr
  (* While ___ do ___ ; - no need for type_expr annotation as type of a loop is TEVoid *)
  | BinOp       of loc * type_expr * bin_op * expr * expr
  | UnOp        of loc * type_expr * un_op * expr

and block_expr = Block of loc * type_expr * expr list

(** Function defn consists of the function name, return type (and whether it returns a
    borrowed ref), the list of params, and the body expr of the function *)
type function_defn =
  | TFunction of
      Function_name.t * modifier option * type_expr * param list * block_expr

type program = Prog of function_defn list * block_expr