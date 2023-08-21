open Ast_types
open Core

let indent_space = "   "

let pprint_modifier ppf ~indent modifier =
  Fmt.pf ppf "%sModifier: %s@." indent (string_of_modifier modifier)

let pprint_type_expr ppf ~indent type_expr =
  Fmt.pf ppf "%sType expr: %s@." indent (string_of_type type_expr)

let pprint_param ppf ~indent = function
  | TParam (type_expr, param_name) ->
      Fmt.pf ppf "%sParam: %s@." indent (Var_name.to_string param_name) ;
      let new_indent = indent_space ^ indent in
      pprint_type_expr ppf ~indent:new_indent type_expr

let pprint_params ppf ~indent = function
  | []     -> Fmt.pf ppf "%sParam: %s@." indent (string_of_type TEVoid)
  | params -> List.iter ~f:(pprint_param ppf ~indent) params
