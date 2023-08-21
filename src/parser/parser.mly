/* This is the specification for the parser */

%{
  [@@@coverage exclude_file]
  open Ast.Ast_types
  open Parsed_ast
%}

/* Token definitions */

%token  <int> INT
%token  <string> ID
%token  LPAREN
%token  RPAREN 
%token  LBRACE 
%token  RBRACE 
%token  COMMA 
%token  DOT 
%token  COLON 
%token  SEMICOLON 
%token  EQUAL 
%token  PLUS
%token  MINUS
%token  MULT
%token  DIV
%token  REM
%token  LESS_THAN
%token  GREATER_THAN
%token  AND
%token  OR
%token  EXCLAMATION_MARK
%token  LET 
%token  FUNCTION
%token  TYPE_INT 
%token  TYPE_BOOL
%token  TYPE_VOID
%token  TRUE
%token  FALSE
%token  RECURSIVE
%token  IF
%token  ELSE
%token  EOF 
%token  FOR
%token  WHILE
%token  MAIN
%token PRINTF
%token <string> STRING


%start program
%type <Parsed_ast.program> program


%type <modifier> modifier
%type <param list> params
%type <param> param

%type <function_defn> function_defn

%type <type_expr> type_expr
%type <type_expr> let_type_annot

%type <block_expr> main_expr
%type <block_expr> block_expr
%type <expr list> args
%type <identifier> identifier
%type <expr> simple_expr
%type <expr> expr

%type <expr> op_expr
%type <un_op> un_op
%type <bin_op> bin_op
%type <expr> bin_op_expr


%%

/* Grammar production 
 * Note: $i refers to the i'th (non)terminal symbol in the rule*/

program: 
| function_defns=list(function_defn); main= main_expr;  EOF {Prog(function_defns, main)}


modifier:
| RECURSIVE { MRec }


/* Method and function definitions */

params:
| LPAREN; params=separated_list(COMMA,param); RPAREN {params}


param:
| param_type=type_expr; param_name=ID;  {TParam(param_type, Var_name.of_string param_name)}


function_defn: 
| FUNCTION; recursive=option(modifier); return_type=type_expr; function_name=ID; function_params=params;  body=block_expr {TFunction(Function_name.of_string function_name, recursive, return_type, function_params,body)}


/* Types */

type_expr : 
| class_name=ID {TEClass(Class_name.of_string class_name)}
| TYPE_INT  {TEInt} 
| TYPE_BOOL {TEBool}
| TYPE_VOID {TEVoid}

let_type_annot:
| COLON ; type_annot=type_expr {type_annot}

/* Expressions */

main_expr:
| TYPE_VOID; MAIN; LPAREN; RPAREN; exprs=block_expr {exprs}

block_expr:
| LBRACE; exprs=separated_list(SEMICOLON, expr); RBRACE {Block($startpos, exprs)}


/* Method / function arguments */
args:
| LPAREN; args=separated_list(COMMA, expr); RPAREN {args}

identifier:
| variable=ID {Variable(Var_name.of_string variable)}
| obj=ID DOT field=ID {ObjField(Var_name.of_string obj, Field_name.of_string field)}

simple_expr:
| LPAREN e=expr RPAREN {e}
| i=INT {Integer($startpos, i)}
| TRUE { Boolean($startpos, true)}
| FALSE {  Boolean($startpos, false) }
| id=identifier { Identifier($startpos, id)}

expr:
| op_e=op_expr  {op_e}
/*  Creating / reassigning \ deallocating references */
| LET; var_name=ID; type_annot=option(let_type_annot);  EQUAL; bound_expr=expr  {Let($startpos, type_annot, Var_name.of_string var_name, bound_expr)} 
| id=identifier; COLON; EQUAL; assigned_expr=expr {Assign($startpos, id, assigned_expr)}
/* Function / Method Application */
| fn=ID; fn_args=args { FunctionApp($startpos, Function_name.of_string fn, fn_args) } 
| PRINTF; LPAREN; format_str=STRING; option(COMMA); args=separated_list(COMMA, expr); RPAREN {Printf($startpos, format_str,args)}
/* Control flow */
| IF; cond_expr=expr; then_expr=block_expr; ELSE; else_expr=block_expr {If($startpos, cond_expr, then_expr, else_expr)}
| WHILE cond_expr=expr; loop_expr=block_expr {While($startpos, cond_expr, loop_expr)}
| FOR; LPAREN; init_expr=expr; SEMICOLON; cond_expr=expr; SEMICOLON; step_expr=expr; RPAREN; loop_expr=block_expr {For($startpos, init_expr, cond_expr, step_expr, loop_expr)}

/* Operator expressions */

op_expr:
| op=un_op e=simple_expr {UnOp($startpos,op,e)}
| bin_op_expr=bin_op_expr {bin_op_expr}

un_op:
| EXCLAMATION_MARK {UnOpNot}
| MINUS {UnOpNeg}

bin_op:
| PLUS { BinOpPlus }
| MINUS { BinOpMinus }
| MULT { BinOpMult }
| DIV { BinOpIntDiv } 
| REM { BinOpRem }
| LESS_THAN { BinOpLessThan }
| LESS_THAN EQUAL { BinOpLessThanEq }
| GREATER_THAN { BinOpGreaterThan }
| GREATER_THAN EQUAL{ BinOpGreaterThanEq }
| AND {BinOpAnd}
| OR {BinOpOr}
| EQUAL EQUAL {BinOpEq}
| EXCLAMATION_MARK EQUAL {BinOpNotEq}


bin_op_expr:
| e1=bin_op_expr op=bin_op e2=simple_expr {BinOp($startpos, op, e1, e2)}
| e=simple_expr {e}