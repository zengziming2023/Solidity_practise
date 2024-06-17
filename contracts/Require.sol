// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Require{

    function testRequire(uint amount) public {
        require(amount%2 == 0, "amount should be even.");
    }
}