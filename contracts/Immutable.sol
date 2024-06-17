// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Immutable {
    uint256 immutable n = 5;
    uint256 immutable m;
    uint256 immutable m2 = 6;

    constructor() {
        m = 6;
        m2 = 7;     // 居然可以二次初始化？？
    }

    function f() public pure returns (uint256) {
        // m = 7;   // 只能声明时直接初始化，或者在构造函数初始化
        // m2 = 8;  // 不能修改
        return m2;
    }
}
