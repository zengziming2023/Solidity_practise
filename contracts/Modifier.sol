// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Modifier {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "only owner can call this function.");
        _;
    }

    function mint() external onlyOwner{}

    function changeOwner() external onlyOwner{}

    function pause() external onlyOwner{}
}
