//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.0;

contract requireStatement {
    //condition checking
    //true - next line of code
    // false - revert back and throw false

    bool public valid;

    function isEven(uint a) public {
        require(a%2==0,"a is an odd number");
        valid = true; //will be false if we pass any odd number
    }
}