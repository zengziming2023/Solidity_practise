// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

// Callee既没有定义receive函数，也没有定义fallback函数 -- 转账会失败
contract Callee {}


contract Receive{
    address payable callee;

    constructor(){
        callee = payable(address(new Callee()));
    }

    // 失败，因为Callee既没有定义receive函数，也没有定义fallback函数
    function tryTransfer() external  {
        callee.transfer(1);
    }

    function trySend() external {
        bool success = callee.send(1);
        require(success, "failed to send eth.");
    }

    // 转账3： call{value: amount}("")（gas 可以随意设定，返回布尔值）

    function tryCall() external {
        (bool success, bytes memory data) = callee.call{value: 1}("");
        require(success, "failed to send eth.");
    }

    /**
    Ether 转账时所转的是原生代币（native token）。
    而 ERC20 所定义的都是非原生代币（non-native token）。
    ERC20 代币内部实现类似于一个数据库，里面记录了每个持有者持有了多少个代币。
    ERC20 代币转账调用的都是普通函数。
    跟 Ether 转账是有本质不同的。
    */

    // 合约没有定义 receive 和 fallback 函数时，不能对其转账

    // 接收eth 转账 
    uint a;
    receive() external payable { 
        a += 1;
    }
}