// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract ForWhile {
    function testForWhile() public {
        uint sum = 0;
        for (uint i = 0; i < 10; i++) {
            sum += i;
            if (i == 5) {
                break;
            }
        }

        uint index = 0;
        while(index < 10){

            index +=1;
        }

        uint index2 = 0;
        do{
            index2 += 1;
        }while (index2 < 10);

        // break;
        for(uint i=0; i<10; i++){
            for(uint j=0; j<5; j++){
                if(j == 2){
                    // 只跳出当前循环
                    break;
                }
                if(j == 3){
                    // 只跳过当次
                    continue ;
                }
            }
        }
    }
}
