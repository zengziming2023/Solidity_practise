// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Revert {
    function testRevert() public {}

    function splitEther(address payable addr1, address payable addr2)
        public
        payable
    {
        if (msg.value % 2 != 0) {
            revert("Even value required");
        }

        addr1.transfer(msg.value / 2);
        addr2.transfer(msg.value / 2);
    }
}
