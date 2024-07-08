
# Chapter 10: More on Functions

In this chapter, we're going to learn about function return values and function modifiers.

## Return Values

To return a value from a function in Solidity, the declaration looks like this:

```solidity
string greeting = "What's up dog";

function sayHello() public returns (string memory) {
  return greeting;
}
```

In Solidity, the function declaration specifies the type of the return value (in this case `string`).

## Function Modifiers

The above function `sayHello` doesn't change state in Solidity — meaning it doesn't modify any values or write anything. So in this case, we could declare it as a `view` function, indicating it's only viewing the data but not modifying it:

```solidity
function sayHello() public view returns (string memory) {
  return greeting;
}
```

Solidity also supports `pure` functions, which means the function doesn't even read from the state of the app. Here's an example:

```solidity
function _multiply(uint a, uint b) private pure returns (uint) {
  return a * b;
}
```

This function's return value depends only on its function parameters (`a` and `b`), not on any app state, so it is declared as `pure`.

Note: Solidity's compiler issues warnings to guide you on when to use `pure` or `view` modifiers.

## Put it to the Test

We're going to want a helper function that generates a random DNA number from a string.

Create a private function called `_generateRandomDna`. It will take one parameter named `_str` (a string), and return a `uint`. Set the data location of the `_str` parameter to `memory`.

This function will view some of our contract's variables but not modify them, so mark it as `view`.

The function body should be empty at this point — we'll fill it in later.
