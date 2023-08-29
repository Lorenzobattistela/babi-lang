open Ast.Ast_types
open Core

type type_binding = Var_name.t * type_expr
type type_env = type_binding list

(********** GETTER METHODS for type-checking core language *********)

let rec get_var_type (var_name : Var_name.t) (env : type_env) loc =
  match env with
  | []                            ->
      Error
        (Error.of_string
           (Fmt.str "%s Type error - Variable %s not defined in environment@."
              (string_of_loc loc) (Var_name.to_string var_name)))
  | (var_name', var_type) :: env' ->
      if var_name' = var_name then Ok var_type else get_var_type var_name env' loc

let get_params_types params =
  List.map ~f:(fun (TParam (param_type, _)) -> param_type) params

let get_function_type func_name function_defns loc =
  let matching_function_defns =
    List.filter
      ~f:(fun (Parsing.Parsed_ast.TFunction (name, _, _, _, _)) -> func_name = name)
      function_defns in
  match matching_function_defns with
  | [] ->
      Error
        (Error.of_string
           (Fmt.str "%s Type error - Function %s not defined in environment@."
              (string_of_loc loc)
              (Function_name.to_string func_name)))
  | [Parsing.Parsed_ast.TFunction (_, _, return_type, params, _)] ->
      Ok (get_params_types params, return_type)
  | _ ->
      Error
        (Error.of_string
           (Fmt.str
              "%s Type error - Function %s has duplicate definitions in environment@."
              (string_of_loc loc)
              (Function_name.to_string func_name)))

(********** CHECK METHODS for checking invariants *********)

let check_no_var_shadowing_in_block exprs loc =
  if
    List.contains_dup
      ~compare:(fun expr1 expr2 ->
        match expr1 with
        | Parsing.Parsed_ast.Let (_, _, var_name1, _) -> (
          match expr2 with
          | Parsing.Parsed_ast.Let (_, _, var_name2, _) ->
              if var_name1 = var_name2 then 0 (* duplicate let binding! *) else 1
          | _ -> 1 )
        | _ -> 1)
      exprs
  then
    Error
      (Error.of_string
         (Fmt.str "%s Type error: Duplicate variable declarations in same block.@."
            (string_of_loc loc)))
  else Ok ()

let check_variable_declarable var_name loc =
  if var_name = Var_name.of_string "this" then
    Error
      (Error.of_string
         (Fmt.str "%s Type error - Trying to declare 'this'.@." (string_of_loc loc)))
  else Ok ()

let check_identifier_assignable id loc =
  let open Result in
  match id with
  | Parsing.Parsed_ast.Variable x ->
      if x = Var_name.of_string "this" then
        Error
          (Error.of_string
              (Fmt.str "%s Type error - Assigning expr to 'this'.@." (string_of_loc loc)))
      else Ok ()

