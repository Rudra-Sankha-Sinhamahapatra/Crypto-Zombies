//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract constructorProgram {

uint public num = 10;

    constructor (uint val) {
     num = val;
    }
    
}