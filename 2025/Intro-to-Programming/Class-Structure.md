# Fields
- Instance variables!
- Fields store values for an object
	- they are also known as instance variables
- They define the state of an object
- Fields **must be declared**.

> FACT: You cannot use anything in Java without declaring it first!

```java
public class TicketMachine
{
	private int price;
	private int balance;
	private int total;
}
```
# Constructors
Constructors initialise an object
- have the same name as their class
- store initial values into the fields
- often receive external parameters/values for this
```java
public TicketMachine(int ticket cost) 
{
	price=ticketCost;
	balance=0;
	total=0;
}
```
Formal parameter declaration variables ^

When a constructor is called first an object is created with appropriate fields, then
- values are passed into the formal parameters
Java can run without visibility specifier.