# Flow of Control
- So far control flows sequentially (one after the other) in programs
- Programs can only carry out the same sequence of statements
- We need to make statements that enable us to:
	- Make choices if some condition is true then do this one set of actions (**conditional statements**)
	- Do some set of actions repeatedly some number of times, or until some condition is met (**loops**)

# The Conditional statement
- "if... else..."
```java
if ( perform some test ) {  
do the statements here if the test gave a true result  
}  
else {  
do the statements here if the test gave a false result  
}
```
# Conditions
- Relational operators
	- <
	- >
	- <=
	- >=
	- ==
	- !=
- Boolean operators
	- && (and)
	- || (or)
	- ! (not)

## Examples
- if (age <= maxAge) {etc...}
- if (!((age < maxAge) && (age>= minAge)) ) {etc...}

# Nested Conditionals
- Sometimes we need multiple branches depending on different conditions:
![[Pasted image 20251015133631.png]]