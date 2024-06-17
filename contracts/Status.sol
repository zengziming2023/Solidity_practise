// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Status{

    /**
    view 函数只能查询合约状态，不能更改合约状态。简单来讲就是只读不写的
    pure 既不能查询，也不能修改函数状态。只能使用函数参数进行简单计算并返回结果
    payable 允许函数接受 Ether 转账。函数默认情况下是不能接受转账的，如果你需要接受转账，那么必须指定其为 payable

    读取状态
    读取状态变量
    访问 address(this).balance 或者 <address>.balance
    访问 block , tx , msg 的成员
    调用未标记为 pure 的任何函数
    使用包含某些操作码的内联汇编

    修改合约状态
    修改状态变量
    触发事件
    创建其他合约
    使用 selfdestruct 来销毁合约
    通过函数调用发送以太币
    调用未标记为 view 或 pure 的任何函数
    使用低级别调用，如 transfer, send, call, delegatecall 等
    使用包含某些操作码的内联汇编
    */

    uint count;
    function getCount() public view returns(uint){
        return count;
    }

    function add(uint a, uint b) public pure returns(uint){
        return a + b;
    }

    function deposit() external payable {
        
    }
}