
# Chapter 11: Keccak256 and Typecasting

In this chapter, we'll explore how to generate pseudo-random numbers using `keccak256` and understand typecasting in Solidity.

## Keccak256

Ethereum's `keccak256` is a hash function, similar to SHA3, that maps an input into a random 256-bit hexadecimal number. It's commonly used for generating pseudo-random numbers in Solidity:

```solidity
// Example of keccak256 usage
// 6e91ec6b618bb462a4a6ee5aa2cb0e9cf30f7a052bb467b0ba58b8748c00d2e5
keccak256(abi.encodePacked("aaaab"));

// b1f078126895a1424524de5321b339ab00408010b7cf0e6ed451514981e58aa9
keccak256(abi.encodePacked("aaaac"));
```

Note how small changes in the input produce vastly different output values, making it suitable for generating randomness.

## Typecasting

Typecasting allows you to convert between different data types in Solidity. Here's an example:

```solidity
uint8 a = 5;
uint b = 6;
// Throws an error because a * b returns a uint, not uint8:
// uint8 c = a * b;

// We have to typecast b as a uint8 to make it work:
uint8 c = a * uint8(b);
```

By typecasting `b` as `uint8`, the multiplication operation works without errors.

## Put it to the Test

Let's fill in the body of our `_generateRandomDna` function! Here's what it should do:

1. Calculate the `keccak256` hash of `abi.encodePacked(_str)` to generate a pseudo-random hexadecimal value.
2. Typecast the result as `uint` and store it in a variable called `rand`.
3. Ensure our DNA is only 16 digits long by returning `rand % dnaModulus`.

```solidity
function _generateRandomDna(string memory _str) private view returns (uint) {
    uint rand = uint(keccak256(abi.encodePacked(_str)));
    return rand % dnaModulus;
}
```

This function uses `keccak256` to generate a pseudo-random number from a given string `_str`, ensuring the result fits within the constraints defined by `dnaModulus`.


This  explains how to use `keccak256` for pseudo-random number generation and demonstrates typecasting in Solidity to manage data type conversions effectively.