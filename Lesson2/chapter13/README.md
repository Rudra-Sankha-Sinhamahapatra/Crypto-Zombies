# Chapter 13: Bonus: Kitty Genes

Our function logic is now complete... but let's add in one bonus feature.

Let's make it so zombies made from kitties have some unique feature that shows they're cat-zombies.

To do this, we can add some special kitty code in the zombie's DNA.

If you recall from lesson 1, we're currently only using the first 12 digits of our 16 digit DNA to determine the zombie's appearance. So let's use the last 2 unused digits to handle "special" characteristics.

We'll say that cat-zombies have 99 as their last two digits of DNA (since cats have 9 lives). So in our code, we'll say if a zombie comes from a cat, then set the last two digits of DNA to 99.

## If statements

If statements in Solidity look just like JavaScript:

```solidity
function eatBLT(string memory sandwich) public {
  // Remember with strings, we have to compare their keccak256 hashes
  // to check equality
  if (keccak256(abi.encodePacked(sandwich)) == keccak256(abi.encodePacked("BLT"))) {
    eat();
  }
}
```

## Put it to the test

Let's implement cat genes in our zombie code.

First, let's change the function definition for `feedAndMultiply` so it takes a 3rd argument: a string named `_species` which we'll store in memory.

Next, after we calculate the new zombie's DNA, let's add an if statement comparing the `keccak256` hashes of `_species` and the string "kitty". We can't directly pass strings to `keccak256`. Instead, we will pass `abi.encodePacked(_species)` as an argument on the left side and `abi.encodePacked("kitty")` as an argument on the right side.

Inside the if statement, we want to replace the last 2 digits of DNA with 99. One way to do this is using the logic: `newDna = newDna - newDna % 100 + 99;`.

Explanation: Assume `newDna` is 334455. Then `newDna % 100` is 55, so `newDna - newDna % 100` is 334400. Finally add 99 to get 334499.

Lastly, we need to change the function call inside `feedOnKitty`. When it calls `feedAndMultiply`, add the parameter "kitty" to the end.




# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.ts
```
