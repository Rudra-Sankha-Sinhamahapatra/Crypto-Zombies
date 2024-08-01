// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.7.0 <0.9.0;

contract Integer {
   int public num = 790; // int256
   int8 public num2 = 127; // - 128 to 127

   uint public n3 = 255;
   // n3++ ,this will throw error use unchecked instead
   
   uint256 public n1 = 256; //256
   uint8 public n2 = uint8(n1); //0 because it ranges 0 - 255

   function uncheck() public {
    unchecked { //without unchecked the post increament operator throws error
        n3++; // n3 becomes 0
    }
   }
}