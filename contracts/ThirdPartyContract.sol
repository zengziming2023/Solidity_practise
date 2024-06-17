// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

import "./MainContract.sol";

contract ThirdPartyContract{

    function funcThirdParty(address mainContractAddr) private {
        MainContract(mainContractAddr).funExternal();   // 外部合约可以调external func
        MainContract(mainContractAddr).funPublic();     // 外部合约可以调public func
    }
}