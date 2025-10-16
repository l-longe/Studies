29092025
# Key Ideas
Algorithms are used to help computers understand how to solve problems. It needs to give:
- a sequence of steps
- the control flow (the order)
- a way to determine when to stop
It's important to make sure that your algorithms are **fast** and **correct**.
A [programming language]() is a way to tell a computer what to do.

# Exploring language design

There are four idealised programming languages
1. jumpy imperative
2. structured imp
3. imp pro
4. recursive imp

# What is an algorithm
- If we can understand abstract problems, we can apply it to particular examples!
- There are a few algorithmic problems like this: sorting, finding the largest, finding the shortest path.
- an algorithm is a precise description of how to solve a problem using **basic** operations
	- it should be clear how to implement our solution in a range of programming languages
	- we want to think about **efficiency**, so we care about the number of steps things take. using fancy operations hides that.
- an algorithm must also be precise, and must halt and return an answer.

### How do we solve an algorithm using this specification
```pseudocode
input: two numbers, n_1 and n_2
output: true if n_1 > n_2 and false otherwise
```

Example:
```pseuocode
1. check if n_1-n_2 >0
2. if it is, return true
3. else, return false
```
# How do algorithms differ from programs?
- A program does not have to terminate, or return an answer.
- An algorithm should be human-readable.
- A program should be computer-readable.

- One algorithm can be implemented by different programs
- ![[Pasted image 20251013185442.png]]
> A **program** implements an algorithm, and an algorithm can have **different implementations.**
## Correctness and Efficiency
> Dijkstra's slogan: Debugging can't prove there are no bugs; it can only find ones that are there.

- Every algorithm comes with a specification.
- It's correct if it matches the specification
- A specification consists of:
	- A description of the valid inputs
	- A description of the valid outputs in terms of the inputs.
> A program is **partially correct** if for every valid input:
	- the output is the one required by the specification *whenever it halts*.
> A program is totally correct if it is partially correct...
	- and always halts
```
input : an English word w  
output : true if w comes before ‘fish’ in the dictionary, otherwise  
false 
 
1 work through the letters of w from left to right  
2 compare the ith letter of w to the ith letter of ‘fish’  
3 if the ith letter of w comes before the ith letter of ‘fish’, return true  
4 if the ith letter of w comes after the ith letter of ‘fish’, return false  
5 else: the ith letters are the same, so move on to the next ones  
6 if you reach the end of w :  
7 w has the same first 4 letters as ‘fish’, but is longer  
8 so return false
```
![[Pasted image 20251013190226.png]]
The above is totally correct.
Every totally correct program is partially correct, by definition.

## How do we show that an algorithm is correct?
### Floyd-Hoare logic
Logic is defined as *formal rules for showing that something is true.*
**Floyd-Hoare** logic: formal rules for showing that a program is correct, a common technique in verification.
![[Pasted image 20251013190704.png]]
^ Mathematic axioms
### Hoare Triple
{P} S {Q}
- The execution of S beginning in a state where P is satisfied will terminate in a state where Q is satisfied.
{P} = precondition
S = statement/program
{Q} = postcondition

### Example
{x=0} x:=x+1 {x>0}
precondition: x is zero
statement/program: adding one to x
postcondition: x is going to be greater than zero

Checking the validity:
- take the statement and apply the assignment statement to the postcondition to see if we get the precondition

So...
- take x>0 and perform the textual substitution
- so x+1>0, becomes x>-1
- therefore, as when x=0, x>-1 works, then the hoare triple is valid!
## Using Hoare Triples to show correctness
To show the general algorithm below is correct
![[Pasted image 20251013192730.png]]
1. The algorithm must halt
2. The following is a valid Hoare triple
	1. {condition on inputes}
	2. our algorithm
	3. {someVariable = output required by specification}
Floyd Hoard logic gives formal rules for building up Hoare triples.

## Assertions
- An assertion is a logical statement about program variables at a specific checkpoint in a program
- An assertion is **valid** if it is true every time a program passes through that checkpoint.
### Examples

![[Pasted image 20251013195025.png]]
This assertion is valid
![[Pasted image 20251013195110.png]]
This assertion is not valid

![[Pasted image 20251013195141.png]]
This is an assertion that is valid

- We demonstrate correctness by starting from obvious assertions, and gradually adding them throughout the program.
- Most major programming languages have some for of assertion.

*Dafny* is a programming language for verification inspired by Hoare logic.
You can write preconditions, postconditions, and assertions, The program will only compule if they are valid.

Example:
the absolute value of x is:
![[Pasted image 20251013195728.png]]
![[Pasted image 20251013195737.png]]
# How to measure the speed of programs
- Counting significant operations
- Choosing what's significant based on the problem we are studying

## Examples of significant operations
- Summing: number of **arithmetic** operations
- Searching: number of times we **compare** items
- Sorting: number of times we compare items

The longer the list, the longer it takes to search: the number of comparisons depends on the input.

So we need to care about the input size of an algorithm.

## Counting operations
Usually the number of operations depends on the input. So what should we count?

- The **best case**
- The **average case**
- The **worst case**

# Insertion sort
![[Pasted image 20251013201408.png]]
# How do we write algorithms precisely?
We want:
1. clarity over which basic operations we're using
2. Easy counting of operations for measuring efficiency
3. Easy implementation over a range of programming languages
We achieve this using pseudocode.

## What is Pseudocode?
- Informal notation for programs which conveys our intention.
- Abstraction!
- It gets rid of irrelevant language specific to certain programming languages. A mix of maths, programming language and natural language syntax.
## Benefits of using pseudocode
1. Language-agnostic: easy to implement in lots of languages
2. Flexible: we can choose what basic operations to allow
3. Human-readable: we write just enough to get the point across
4. Precise: it comes with some expected semantics, detailed enough for us to analyse complexity