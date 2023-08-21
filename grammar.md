# Grammar

This doc define the grammar for Babi's lang. WIP.

```
x       variable name
fn      function name
n       integer
b       boolean
T       type parameter
j,k,l   index variable
syntm   syntactic marker


program     ::= 
            | Fnd1, ..., Fndk void main() { e1; ... ; el }

modifier    ::= 
            | const
            | var

param                   ::=         (method / function parameter)
                        | type x

type        :==
            | int
            | bool
            | void

id          :==
            | x

e           :==
            | unop e
            | e1 binop e2
            | (e)
            | n
            | b
            | id
            | let x = e
            | let x : type = e
            | id := e
            | fn(e1,...,ek)
            | if(e{e1;...;ek} else {e1;...;el})
            | while e{e1;...;ek}
            | for(e1;e2;e3;){e1;...;ek}

unop        :==
            | ! (not)
            ! - (negation)

binop       :==
            | +
            | *
            | /
            | %
            | <
            | >
            | <=
            | >=
            | ==
            | !=
            | &&
            | ||
```