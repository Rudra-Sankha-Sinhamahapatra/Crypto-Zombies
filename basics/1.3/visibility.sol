//SPDX-License-Identifier: GPL-3.0
pragma solidity <0.9.0;

contract Demo {
    function f1() public pure returns(uint) {
        f4();
        return 1;
    }

    function f2() private pure returns(uint) {
        return 2;
    }

    function f3() external pure returns(uint) {
        return 3;
    }

    function f4()internal pure returns(uint) {
        return 4;
    }
}

contract Child is Demo {
    Demo obj = new Demo();
    uint public x = obj.f1();
    // uint private y = obj.f2(); throws error because private contract

    function returnValue() public pure returns(uint) {
        return f4();
    }

    //   function returnValue2() public pure returns(uint) {
    //     return f3(); //we cant call external contract within the contract
    // }
}


contract otherContract {
Demo obj = new Demo();
uint public x = obj.f1();
// uint private y = obj.f2(); //error
uint internal z = obj.f3();
// uint external a = obj.f4(); //error
}