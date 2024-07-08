
# Chapter 6: Arrays

When you want a collection of something, you can use an array. There are two types of arrays in Solidity: fixed arrays and dynamic arrays:

```solidity
// Array with a fixed length of 2 elements:
uint[2] fixedArray;
// Another fixed Array, can contain 5 strings:
string[5] stringArray;
// A dynamic Array - has no fixed size, can keep growing:
uint[] dynamicArray;
```

You can also create an array of structs. Using the previous chapter's `Person` struct:

```solidity
struct Person {
  uint age;
  string name;
}

Person[] people; // dynamic Array, we can keep adding to it
```

Remember that state variables are stored permanently on the blockchain? So creating a dynamic array of structs like this can be useful for storing structured data in your contract, kind of like a database.

## Public Arrays

You can declare an array as `public`, and Solidity will automatically create a getter method for it. The syntax looks like:

```solidity
struct Zombie {
  string name;
  uint dna;
}

contract ZombieFactory {
  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits;

  Zombie[] public zombies;
}
```

Other contracts would then be able to read from, but not write to, this array. So this is a useful pattern for storing public data in your contract.

## Put it to the Test

We're going to want to store an army of zombies in our app. And we're going to want to show off all our zombies to other apps, so we'll want it to be public.

Create a `public` array of `Zombie` structs, and name it `zombies`:

```solidity
pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {
  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits;

  struct Zombie {
    string name;
    uint dna;
  }

  Zombie[] public zombies;
}
```

When you're finished, click "check answer" below. If you get stuck, you can click "hint".
