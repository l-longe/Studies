01/10/2025

# Objects
- These represent a thing from the real world or some problem domain. *(e.g. my car, jane's car)*
- In short, they are **instances of a class.** 
- Each object has its own specific *values* or *settings* for attributes specified by its class. *(e.g. my car is red)*
- The class defines what methods each object has (named behaviours)*(e.g. move the car, stop the car)*
- Many instances can be created form each class.

## Objects as Values
- A *field* can have an object as its value.
- The type of such a field is the class of the objects it can take as values.

# Classes
- These describe all the objects of a particular kind.  They are defined, made an instance, and then made to do something.
- In short, they **specify a form and design of an object.**
	- They specify what sort of info we have about an object kind. *(e.g. make, colour, speed, location)*
	- They specify the allowable inherent named/package behaviours and operations on these kinds of objects (which is what methods do?)


# Interacting with Objects

# Methods 
- **The things that objects can do!**
- Operations of behaviours of classes that can be invoked.
- They may have *parameters* to pass additional info needed to perform certain behaviours.
- Constructors are also methods and may have parameters too.
## Constructor Methods
- Something that an instance of a class can do to achieve a particular initialisation of an object. Used to create new objects.
## Constructors vs Methods
```java
class Car {
    String brand;

    // Constructor
    Car(String b) {
        brand = b;  // initializes the object
    }

    // Method
    void drive() {
        System.out.println(brand + " is driving");
    }
}

public class Main {
    public static void main(String[] args) {
        Car myCar = new Car("Toyota"); // constructor runs here
        myCar.drive(); // method runs here
    }
}

```
# Parameters

# Data Types

# Examples

| Name        | Example                                        |
| ----------- | ---------------------------------------------- |
| classes     | **Circle, Triangle**                           |
| object      | **triangle1, square1**                         |
| constructor | new **Circle()**                               |
| method      | **makeVisible()**                              |
| parameter   | changeSize (int **newSize**)                   |
| field       | private String **color**, private int **size** |
| data type   | **String** color, **int** size                 |
|             |                                                |
