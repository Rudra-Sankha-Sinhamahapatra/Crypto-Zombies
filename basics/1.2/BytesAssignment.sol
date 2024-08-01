//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.0;

contract ByteExample {
    bytes1 public singleByte;
    bytes2 public twoBytes;

    constructor() {
        //Initialize singleByte with the ascii code for the letter 'A'
        singleByte = 'A';
        //Initialize twoBytes with the ASCII code for 'B' and 'C'
        twoBytes = 'BC';
    }

    function updateSingleByte(bytes1 newByte) public {
       //update the value of singleByte with the provided byte
        singleByte = newByte;
    }

    function updateTwoBytes(bytes2 newByte) public {
    //update the value of twoBytes with the provided bytes
    twoBytes = newByte;
    }
}