## A Swift Tour
### Simple Values
- `let`: make a constant
- `var`: make a variable
- a constant or variable must have the same type as the value you assign it, but you don't have to write the type explicitly
- include value in strings
	- explicitly make an instance of the desired type
	- simpler way: write the value in paratheses, and write a backslash(\) before it
``` swift
let apples = 3
let appleSummary = "I have \(apples) apples."
```
- use three double quotation marks `(""")` for strings take up multiple lines
- create arrays and dictionaries using brackets`([])`, access their elements by writing the index or key in brackets, a comma is allowed after the last element
	- arrays automatically grow as adding elements
	- use `[]` to create empty array, use `[:]` to create empty dictionary

### Control Flow
- use `if` and `switch` to make conditionals
- use `for-in`, `while`, `repeat-while` to make loops
- parentheses around the condition or loop variable are optional
- braces around the body are required
- in an `if` statement, condition must be Boolean expression
- `?`: write a question mark after the type of a value to mark the value as optional
- `??`: if the optional value is missing, the default value is used instead
- you can keep an index in a loop by using `..<` to make a range of index
	- use `...` to make a range that includes both values
```swift
var total = 0
for i in 0..<4 {
	total += i
}
```

### Functions and Closures
- Use `func` to declare a function
```swift
func greet(Person: String, day: String) -> String {
	return "Hello \(person), today is \(day)."								 
}
greet(person: "Bob", day: "Tuesday")
```
- Use a tuple to make a compound value, the elements of a tuple can be referred to either by name or by number
- functions can be nested
- functions can return another function as its value
- functions can take anther function as one of its arguments

### Objects and Classes
```swift
class Shape {
	var numberOfSides = 0

	func simpleDescription() -> String {
		return "A shape with \(numberOfSides) sides."
	}
}
// Create an instance
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape { 
	var numberOfSides: Int = 0 
	var name: String 
	
	init(name: String) {
		self.name = name 
	} 
	func simpleDescription() -> String { 
		return "A shape with \(numberOfSides) sides." 
	} 
}
```

- subclass include their superclass name after their class name, separated by a `:`
- methods on a subclass that override the superclass's implementation are marked with `override`
```swift
class Square: NamedShape {
	var sideLength: Double
	init(sideLength: Double, name: String) {
		self.sideLength = sideLength
		super.init(name: name)
		numberOfSides = 4
	}

	func area() -> Double {
		return sideLength * sideLength
	}

	override func simpleDescription() -> String {
		return "A square with sides of length \(sideLength)."
	}
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
```
- properties can have a getter and setter

### Enumerations and Structures
- Use `enum` to create an enumeration.
	- enumerations can have methods associated with them.
- Use `struct` to create a structure. Structures support many of same behaviors as classes, including methods and initializers.
	- One of the most important differences between structures and classes is that **structures are always copied when they're passed around in your code**, but classed are passed by reference

### Concurrency
- Use `async` to mark a function that runs asynchronously.
- you mark a call to an asynchronous function by writing `await` in front of it
- Use `async let` to call an asynchronous function, letting it run in parallel with other asynchronous code. When you use the value it returns, write `await`
```swift
func fetchUserID(from server: String) async -> Int {
	if server == "primary" {
		return 97
	}
	return 501
}
func fetchUsername (from server: String) async -> String {
	let UserID = await fetchUserID(from: server)
	if userID == 501 {
	return "John Appleseed"
	}
	return "Guest"													  
}

func connectUser(to server: String) async {
	async let userID = fetchUserID(from: server)
	async let username = fetchUsername(from: server)
	let greeting = await "Hello \(username), user ID \(userID)"
	print(greeting)
}
```
- Use `Task` to call asynchronous functions from synchronous code, without waiting for them to return.
```swift
Task {
	  await connectUser(to: "primary")
}
```
- Actors are similar to classes, except they ensure that different asynchronous functions can safely interact with an instance of the same actor at the same time.

### Error Handling
- You represent errors using any type that adopts the `Error` protocol.
```swift
enum PrinterError: Error {
	case outOfPaper
	case noToner
	case onFire
}
```
- use `throw` to throw an error, use `throws` to mark a function that can throw an error
```swift
func send(job: Int, toPrinter printerName: String) throws -> String {
	if printerName == "Never Has Toner" {
		throw PrinterError.noToner
	}																 
	return "Job sent"
}
```
- use `do-catch` to handle errors
- use `try?` to convert the result to an optional. If the function throws an error, the specific error is discarded and the result is `nil`. Otherwise, the result is an optional containing the value that the function returned.
- Use `defer` to write a block of code that's executed after all other code in the function, just before the function returns.

### Generics
- Write a name inside angle brackets to make a generic function or type.
- You can make generic forms of functions and methods, as well as classes, enumerations, and structures.
- Use `where` right before the body to specify a list of requirements
	- writing `<T: Equatable>` is the same as writing `<T> ... where T: Equatable`



## Basics

### Numeric Literals:
	- Numeric literals can contain extra formatting to make them easier to read.
		- Both integers and floats can be padded with extra zeros and can contain underscores to help with readability.
### Type Aliases
- You can define type aliases with the `typealias` keyword
- Type aliases are useful when you want to refer to an existing type

### Tuples
- The values within a tuple can be of any type and don't have to be of the same type as each other
- If you only need some of the tuple's values, ignore parts of the tuple with `_` 
- access the individual element values in a tuple using index 

### Assertion vs Precondition
- assertions are checked only in debug builds
- but preconditions are checked in both debug and production builds.