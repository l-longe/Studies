# What is Semantic Analysis

- The third phase of a compiler, ensures that a program is semantically correct, meaning it follows the logical rules of a programming language.

- It works on the parse tree (or AST) and symbol table to:
  - Verify type correctness
  - Ensure proper declaration and scope of identifiers
  - Validate expressions and function calls
  
- During this phase, the suntax tree is enriched with type and scope information, forming an **Annotated Syntax Tree**, which is used in later stages like intermediate code generation.

Even if a program is syntactically correct, it may be still incorrect logically.

```
int a;
a = "hello"; // syntactically correct but semantically wrong because type rules are violated!! a is not an integer
```
Semantic analysis ensures
- correct interpretation of meaning
- consistency in program behaviour
- error detection before code generation.
# The Role of the Semantic Analyser

- Type checking
- Scope resolution
- Symbol Table Management
- Functional Call Validation
- Intermediate Representation Support
- Syntax Tree Annotation

# Static vs Dynamic Semantics

Static Semantics
- checked at compile time 
- includes type checking, scope rules, declarations
- helps detect errors early

Dynamic Semantics
- checked at runtime
- defines actual behaviour of program execution

e.g. division by zero, null pointer access


# Example

```
float x = 10.1;
float y = x * 30;
```

x is a float 
30 is integer
convert 30 -> 30.0
perform multiplication

# Type Checking
