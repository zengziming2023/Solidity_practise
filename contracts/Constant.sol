// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Constant {
    uint256 constant radio = 3;
    uint256 a = 5;

    // uint constant b = a;     // constant 需要编译期确认
    // uint constant b;     // constant 需要编译期确认

    function testConstant() public {
        // radio = 4;   // 不能修改

    }
}
