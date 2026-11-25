- A concept used to share and adapt common concepts, reducing code duplication:
	- a super-class which contains all the shared concepts: fields and methods
	- sub-classes which inherit these features but can adapt

# Sharing Concepts From Superclass
- Make a super-class which contains all the shared concepts: fields and methods
- Have sub-classes which inherit these features
- Subclasses may override fields and methods from their superclasses with new definitions
- Inheritance enables a single definition reuse in many places
# Adapting in Subclasses
- Subclasses may add additional fields and methods
- In Java, they cannot completely hide inherited fields and methods, only override them 
	- So do consider whether a concept is common before pushing up to a superclass
- The tree of inheritance is called an **inheritance hierarchy**.
	- It can be as deep as you need it to be.
# Advantages of Inheritance
- Avoids code duplication
- Enhances code reuse
- Easier maintenance (clear structure)
- Extendability
# Abstraction
- **Abstraction** is the ability to ignore details and focus on high level
- It's a key concept in OOP
- Inheritance is an abstraction technique, allowing categorisation, according to shared characteristics
- Inheritance also supports modularisation

# Inheritance in Java
- Keyword: extends
- we say class B extends A. In this case, we have that:
	- B is a subclass of A and A is a superclass of B
	- The extended subclass inherits from the superclass, so only needs to define those fields and methods which are new or different
![[Pasted image 20260317154041.png]]
# Overriding Methods
![[Pasted image 20260317154104.png]]
# Constructors in Subclasses
- A superclass should take care of initialising fields it defines - even if there will always be a subclass (to remove potential duplication);
- A subclass can override these definitions and initialise fields it defines;
- You may call the superclass' constructor in a subclass' constructor, using the syntax ```super(...)```, but...
- ...this must be the first statement in the constructor;
- ```java
  public class Student extends Person {
public Student (String name, int id) {
super(name); … }
  ```
- The compuler always adds a call to super() unless an explicit call is made.
# Object class
- At the root of inheritance hierarchies is the object class.
- This is implied , so no need for explicit 
	- class X extends Object
- Object provides a few common methods, including toString() and equals(...)

# Wrappers & Autoboxing
- Where a subclass of Object is needed, e.g. a collection, then primitive types cannot be used
- Primitive types can be wrapped in an object:
	- Integer wraps int
	- Character wraps char, etc.
- e.g Integer iwrap = new Integer(42);
- and int value= iwrap.intValue();
	- This is called unwrapping
- But autoboxing/unboxing means we rarely do this explicitly, it's done automatically