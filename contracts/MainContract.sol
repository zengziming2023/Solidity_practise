// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MainContract{
    uint varPrivate;
    uint varInternal;   // 只能在当前合约内部或其「子合约」中访问
    uint varPublic;

    function funPrivate() private {}
    function funInternal() internal {}  // 只能在当前合约内部或其「子合约」中访问
    function funExternal() external {}  // 函数只能在当前合约外部访问
    function funPublic() public {}



}

