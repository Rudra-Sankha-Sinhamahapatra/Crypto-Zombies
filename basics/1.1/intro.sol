//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract newContract {
    uint public num = 5; // state variable
//permanently stored in blockchain
//gas cost is associated with state variables
//storage save
//reading cost is 0
//writing a state variable costs gas

function localVariableSetter() public pure{
 uint num2;
  num2=20; //num2 local variable - stack store
}

}

