08102025
# Defining methods
- All methods have a structure consisting of a header and a body (common).
- the header defines the methods signature; e.g.:
	- public int getPrice() {NO SEMICOLON}
- The body encloses the method's statements
- They are public for general use, as opposed to fields which are private and exclusive to a class(?)

## Accessors and Mutators
- Methods implement the behaviour of objects
- Methods often come in two different types.
	- accessor methods: allows us to obtain the values of fields
	- mutator methods: allows us to alter values of fields
### Accessor ('getter') method
- Often if it begins with **get**, it's an accessor.
- A block can contain more than one statement
- Return statements are **mandatory** if the return type is an actual type (not void)
![[Pasted image 20251008101455.png]]
### Mutator ('setter') method
![[Pasted image 20251008102247.png]]
# Printing from methods
![[Pasted image 20251008105807.png]]

> A note about '+':
> Between two int values, + simply does arithmetic additionalBetween two Strings, + creates a new String which is the result of joining the two Strings together
> e.g. "Fred"+"eric" = "Frederic"
> Between any two other values + joins the strings correspondnig to how the values are printed

# More on variables
## Local variables and parameters


