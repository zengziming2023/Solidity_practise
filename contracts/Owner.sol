// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Owner {
    // 结构体
    struct Identity {
        address addr;
        string name;
    }

    // 枚举
    enum State {
        HasOwner,
        NoOwner
    }

    // 事件
    event OwnerSet(address indexed oldOwnerAddr, address indexed newOwnerAddr);
    event OwnerRemoved(address indexed oldOwnerAddr);

    // 

    // 函数修改器
    modifier isOwner(){
        require(msg.sender == owner.addr, "Caller is not owner");
        _;
    }

    // 状态变量
    Identity private owner;
    State private state;
    
    // 函数
    constructor(string memory name){
        owner.addr = msg.sender;
        owner.name = name;
        state = State.HasOwner;
        emit OwnerSet(address(0), owner.addr);
    }

    function changeOwner(address addr, string calldata name) public isOwner{
        owner.addr = addr;
        owner.name = name;
        emit OwnerSet(owner.addr, addr);
    }

    function removeOwner() public isOwner{
        emit OwnerRemoved(owner.addr);
        delete owner;
        state = State.NoOwner;
    }

    function getOwner() external view returns (address, string memory){
        return (owner.addr, owner.name);
    }

    function getState() external view returns (State){
        return state;
    }
}
