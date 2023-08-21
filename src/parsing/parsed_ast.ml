(* This module specifies the structure of the parsed AST *)

open Ast.Ast_types

type identifier = Variable of Var_name.t

type expr =
  | Integer     of loc * int
  | Boolean     of loc * bool
  | Identifier  of loc * identifier
  | Let         of loc * type_expr option * Var_name.t * expr
  (* binds variable to expression (optional type annotation) *)
  | Assign      of loc * identifier * expr
  | FunctionApp of loc * Function_name.t * expr list
  | Printf      of loc * string * expr list
  | If          of loc * expr * block_expr * block_expr (* If ___ then ___ else ___ *)
  | While       of loc * expr * block_expr (* While ___ do ___ *)
  | For         of loc * expr * expr * expr * block_expr
  (* For(init_expr; cond_expr ; step_expr) body_expr *)
  | BinOp       of loc * bin_op * expr * expr
  | UnOp        of loc * un_op * expr

and block_expr = Block of loc * expr list

(* Function defn consists of the function name, return type, the list of params, and the
   body expr of the function *)
type function_defn =
  | TFunction of
      Function_name.t * modifier option * type_expr * param list * block_expr

type program = Prog of function_defn list * block_expr