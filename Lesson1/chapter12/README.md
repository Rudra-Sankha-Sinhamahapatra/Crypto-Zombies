
# Chapter 12: Putting It Together

In this final chapter, we'll create a public function that generates a random Zombie with a given name.

## Put it to the Test

Create a public function named `createRandomZombie`. It will take one parameter named `_name` (a string with the data location set to `memory`).

```solidity
function createRandomZombie(string memory _name) public {
    uint randDna = _generateRandomDna(_name);
    _createZombie(_name, randDna);
}
```

This function ties everything together:
1. It calls `_generateRandomDna` to generate a random DNA based on the input `_name`.
2. It then calls `_createZombie` to create a new Zombie with the given `_name` and `randDna`.

This completes our random Zombie generator by combining the random DNA generation with the creation of a Zombie in just a few lines of code.


This  outlines how to create a public function in Solidity that generates a random Zombie with a specified name by leveraging previously defined functions for random DNA generation and Zombie creation.