
# Chapter 8: Working With Structs and Arrays

## Creating New Structs

Remember our `Person` struct in the previous example?

```solidity
struct Person {
  uint age;
  string name;
}

Person[] public people;
```

Now we're going to learn how to create new `Person` structs and add them to our `people` array.

```solidity
// Create a new Person:
Person satoshi = Person(172, "Satoshi");

// Add that person to the Array:
people.push(satoshi);
```

We can also combine these steps into one line of code to keep things clean:

```solidity
people.push(Person(16, "Vitalik"));
```

Note that `array.push()` adds something to the end of the array, so the elements are in the order we added them. For example:

```solidity
uint[] numbers;
numbers.push(5);
numbers.push(10);
numbers.push(15);
// numbers is now equal to [5, 10, 15]
```

## Put it to the Test

Let's make our `createZombie` function do something!

Fill in the function body so it creates a new `Zombie` and adds it to the `zombies` array. The `name` and `dna` for the new `Zombie` should come from the function arguments.

Let's do it in one line of code to keep things clean:

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

  function createZombie(string memory _name, uint _dna) public {
    zombies.push(Zombie(_name, _dna));
  }
}
```

When you're finished, click "check answer" below. If you get stuck, you can click "hint".
