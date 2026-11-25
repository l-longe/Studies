# Code Generation

- A simple code generator takes input (abstract syntax tree and possibly a symbol table) and yields as output (assembly code, represented as a list of instructions)

# Stack Machine

a stack machine has the following resources to represent a virtually unbound stack:

- main memory, with integer n-byte aligned addresses

- a few processor registers (memory is slower than registers): quick accessible storage locations, addressed by mechanisms other than main memory
  - a program counter
  - a stack pointer
  - a frame pointer

- code is a fixed size, contains static variables
- heap: dynamic: useful to store persistent data structures, which may be absent in some cases
-stack: dynamic, grows and shrinks with the movement of stack pointer, which points to space in front of stack
  
## Advtantages of stack machines

- simple computer model (VMs are easier to realise as software)
- simple compilers (code generation for stack machines is much simpler than for register machines)
- compact assembly code, which saves memory (stack machine assembly commands have at most one argument)
- physical stack machines are rare mainly they are slow, memory access has a much higher latency

# Data access in stack machines

Computer can only work with
- data whose location in memory it knows about
- instructions whose location in memory it knows about
- [ ] **in some cases**: data stored in general purpose registers
Static addresses and locations stored in registers

In a stack machine, nearly every operation involves the stack: it is the one place it can reliably access or store data to compute with

# Commands of the stack machine assembly language

PushImm n Pushes the number n onto stack
PushRel n Pushes the content of memory at address FP + n onto
stack
PopRel n Pops the top element off the stack, stores it at address
FP + n
Reserve n Decreases the value of SP (an address) by n
Discard n Increases the value of SP (an address) by n
SetFP Sets FP to the value of SP (an address)
SaveFP Pushes the value of FP (an address) onto stack
RestoreFP Pops the top element off the stack and stores it in FP
CompGT Pops the first element n1 and the second one n2 off the
stack
Pushes a 1 onto stack if n2 > n1, and a 0 otherwise
... (similar ones for comparison: CompEq for =, CompGE for ≥
Invert Pops the top element off the stack
Pushes a 1 onto stack if it was zero, and a 0
otherwise
LogicalAnd Pops the top two elements off the stack
Pushes a 1 onto stack if both are non-zero, and a 0
otherwise
... (similar ones for logic: LogicalOr, LogicalXor)
Plus Pops the top two elements off the stack
Pushes their sum onto the stack
Minus Pops the first element n1 and the second one n2 off the
stack
Pushes the result of n2 − n1 onto the
stack
... (similar ones for arithmetic: Times for ∗, Slash for ÷)
Jump a Jumps to address a — i.e., write to PC
JumpTrue a Pops the top element off the stack
If it is non-zero, jumps to address a
Invoke a Pushes the address the next line of code is stored at onto
stack
Jumps to address a
Return n Pops the top element (an address a) off the stack
Increases SP by n, jumps to a
Print Pops the top element off the stack
and prints it (as an integer) on the screen
... (similar ones for printing: PrintNewLine, PrintSpace)
