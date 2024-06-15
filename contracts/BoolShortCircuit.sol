// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract BoolShortCircuit {
    uint256 public zeroCount = 0;

    function isEvent(uint256 num) private pure returns (bool) {
        return num % 2 == 0;
    }

    function isZero(uint256 num) public returns (bool) {
        if (num == 0) {
            zeroCount += 1;
        }
        return num == 0;
    }
}
