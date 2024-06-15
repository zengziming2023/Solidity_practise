// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Interger {
    function overFlow() public view returns( uint8) {
        uint8 a = 255;
        a += 1;
        return a;
    }
}
