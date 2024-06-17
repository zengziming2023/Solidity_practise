// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Function{
    uint a;

    // constructor(){
    //     a = 1;
    // }

    // 只能有一个构造函数？
    constructor(uint value){
        a = value;
    }

  // 函数修改器
    modifier onlyOwner(){
        require(msg.sender == address(this), "Caller is not owner");
        _;
    }

    function testFunction(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function f1() public {}

    function f2() public  pure {}

    function f3() public view{}

    function f4(uint a) public pure {}

    function f5(uint a) public pure returns(uint){
        return a;
    }

    function f6(uint a, uint b, uint c) public pure returns (uint, uint, uint){
        return (a,b,c);
    }

    function f7() external  onlyOwner {}
}
