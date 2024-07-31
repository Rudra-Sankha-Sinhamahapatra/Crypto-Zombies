//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract  Function {
    //state variables
    uint num1 = 20;
    uint num2 = 10;

   uint public value = 20; //automatically solidity will create a getter function for it

    function addition() public pure {
       uint a = 10;
       uint b = 20;
       uint c;
       c = a + b;
    }

// we are not dependent on state variables thats why pure
    function subtraction() public pure returns(uint){
     uint a = 10;
     uint b = 20;
     return b - a;
    }

   //reading from state variables thats why we are using view 
    function multiplication () public view returns(uint){
     return num1 * num2;
    }

   function div(uint a,uint b) public pure returns(uint) {
    return a/b;
   }

//we are writing state variables thats why we are not using view or pure in this case
   function channgeState () public {
    num1 = 100;
    uint b;
    b = num2;
   }

   
}