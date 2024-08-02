//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Conditionals {
    uint public num;
    function check1(bool value) public {
        require(value==true,"Not true");
        num = 100;
    }

    function check2(bool value) public returns(string memory) {
     if(value == true) {
        num = 100;
        return "true";
     }
     else {
        return "not true";
     }
    }
}