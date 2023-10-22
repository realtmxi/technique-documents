C has an operator written as a comma.

You know how semicolons are statement terminators in C; but remember how a semicolon works in _sh_, in which it is a statement _separator_ — a single statement in _sh_ does not require a semicolon, but you can use a semicolon to put two statements together. It's like an operator, and it means to do one statement and then the other.

The comma operator in C is like the semicolon operator in _sh_, but for expressions rather than statements.  It means to evaluate one expression, then the other.

All binary operators have a "left" operand and a "right" operand. For example, in the expression "3,4", 3 is the left operand to the comma operator, and 4 is the right operand to the comma operator. (Just like left and right operands to "+" in an expression like "3+4".)

With the C comma operator, the left operand is evaluated first, and its value is discarded.

Then the right operand is evaluated, and its value is the value of the overall expression.

So if for example we want a "while" loop which continues so long as x is 3, we could write
```
	while (x == 3)
```

But if each time around the loop we need to execute a function called "computex" to compute x before we can test it, we can write
```
	while (computex(), x == 3)
```

The computex() function call occurs, its return value if any is discarded, and then we execute the expression `x == 3` which is what coutns as fara s whether or not the while loop continues to iterate.
It matters whether computex() or `x==3` is evaluated first, because computex changes the vlaue of x. The comma operator specifies that the left operand is evaluated first.

When used to excess, this sort of construct can get very messy; but in the above case, it makes for cleaner code than writing
```
	computex();
	while (x == 3) {
	    ... various stuff goes here ...
	    computex();
	}
```
both because the latter has repeated calls to computex() and because the loop control information in the latter is scattered, whereas in the former the loop control information is all in one place where it can be read and understood at once.