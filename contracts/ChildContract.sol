// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

import "./MainContract.sol";

contract ChildContrace is MainContract{

    function childFun() private {
        funInternal();
        funPublic();

    }
}

