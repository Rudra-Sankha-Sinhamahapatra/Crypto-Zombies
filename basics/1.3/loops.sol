//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.0;


contract Loop {
    uint public sum;

//   for(uint m=1;m<10;m++){
//     // throws an error
//   }

    function loop() public {
       for(uint i=0;i<10;i++){
        //loop can be inside a function
       sum+=i;
       }
       uint j=0;
       while(j<10){
        sum+=j;
        j++;
       }

      uint k = 0;
       do {
       sum+=k;
       }while(k<10);
    }
}