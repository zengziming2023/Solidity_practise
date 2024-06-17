// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Assert {
    function testAssert() public {}

    function splitBalance(address payable addr1, address payable addr2)
        public
        payable
    {
        require(msg.value % 2 == 0, "Even value required.");
        uint256 balanceBeforeTransfer = address(this).balance;
        addr1.transfer(msg.value / 2);
        addr2.transfer(msg.value / 2);
        assert(balanceBeforeTransfer == address(this).balance);
    }
}
