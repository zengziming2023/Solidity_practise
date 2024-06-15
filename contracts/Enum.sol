// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Enum {
    enum ActionChoose {
        GoLeft,
        GoRight,
        GoUp,
        GoDown
    }
     ActionChoose action;

    // 转成了uint8
    function getActionChoose() public view returns(ActionChoose){
        return action;
    }
}
