//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.0;

contract Modifier {
  uint public num = 10;

  modifier onlyValid(bool value) {
   require(true==value,"Not Valid");
   num=1;
   _;
  }

  function check1(bool val) public onlyValid(val){
     num=100;
  }

   function check2(bool val) public onlyValid(val){
     num=200;
  }

   function check3(bool val) public onlyValid(val){
     num=300;
  }
}