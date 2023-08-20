# Type checking

What are types? A way of grouping program values based on the behaviour we'd like them to have. This means that the compiler doesn't have as many cases to handle. It means we don't need to look at the actual value, we just reason about it based on the group it's int (its type).

The role of thje type-checker is to prevent nonsensical behaviour. Statically typed languages checks the types at compile-time, where dynamicall typed languages do still have types - values are tagged with types at runtime, and they check it when executing.

We want a list of rules to check a program against, and then if it passes, the program is type-safe. If it doesn't pass, we want to know why. This collection of rules is called a type system.

## Type systems

Types define safe behaviour. The type system's rules (typing judgements) try to assign a type _t_ to an expression _e_.

For example, to define that true is of type bool, we write the rule as:

⊢true:bool

The ⊢ is called the turnstile, and it means "we can prove that", "it follows that". So we can prove that true is of type bool. We can read it as it folows that true has type bool.

⊢false : bool
⊢ n : int for any integer n

## Typing environments

But looking at an expression on its own isnt always enough for us to type-check it. What's the type of a variable x?

⊢ x : ?

It depend on what type it was given when defined. So we need to keep trakc of types as they're defined. This is called typing environment, represented as: Γ. It is a look-up function that maps variables to their types. So we update rules to include the environment:

Γ ⊢ x : t

if Γ ⊢ x : ? and Γ(x) = t then we can conclude that Γ ⊢ x : t

In our typing rules we stack these two statements to give one compound typing rule for variables. This is an example of an inference rule.

Γ ⊢ x : t / Γ(x) = t

## Inference rules

The "fraction" above is a way of representing deductive reasoning. If everything on the top hold, we infer the bottom also holds. Let's look at another rule:

Γ ⊢ e_1 : int   Γ ⊢ e_2 : int  / Γ ⊢ e_1 + e_1 : int

This rule says that if we can prove that e_1 and e_2 are both of type int, then we can infer that e_1 + e_2 is also of type int. We can read this as "if e_1 and e_2 are both of type int, then e_1 + e_2 is also of type int". This is how we build our type system, stacking rules.

Let's combine what we learned so far to type-check a little xpression: `x + 1` where the environment tells that x is an int.

(/ Γ(x) : int / Γ ⊢ x : int)   Γ ⊢ 1 : int  / Γ ⊢ x + 1 : int

But if x is an string, then the environment does not hold, so all the rules stacked below dont hold and the type-checker would raise an error.

## Axioms

Axioms are rules that don't have any premises. They are the base of our type system. For example, we can define that true is of type bool as an axiom:

/ Γ ⊢ true : bool

​What about an if-else?
```
if (something) {
  do_one_thing
} else {
  do_something_else
}
```
Γ ⊢ e_1 : bool    Γ ⊢ e_12 : t     Γ ⊢ e_3 : t  / Γ ⊢ if e_1 {e_2} else {e_3} : t

## Typing the overall program

We wanna show that a program is well-typed to show it is safe. So we essentially want a proof tree that shows it has some type t:

{} ⊢ program : t

But initially, the environment is empty as we havent defined any variables, so how do we add variables to the environment? We can use the let expression:

`let x = e1`
`e2`

We type-check this in the order the program executes. We get the type of e_1, call it t_1. We then extend the environment with the new mapping x : t1. Then we use the extended environment to type-check e_2 and give it type t_2. The rule looks like:

Γ ⊢ e_1 : t_1    Γ,x : t_1 ⊢ e_2 : t_2  / Γ ⊢ let x = e_1; e_2 : t_2

## Type Checking vs Type Inference

Above, we wrote `let x = e`. But we could have written as `let x : t = e` - where we annotate x with type t (e.g `let x : int = 1 + 2`). These lead to different typing: the first case, the compiler infers that 1 + 2 has type int, and in the second case the compiler has to check that 1 + 2 has type int.

Type inference means less type annotations, but more complex for compiler. In practice, most statically-typed langs do require some type annotations, but can infer some types.


## Practical comments

We used our type environment to look up the types of variables. We can store them as a list of bindings (variable, types) pairs.

