// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Address {
    address addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //   address payable payAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable payAddr = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

    address addr2 = payAddr;

    // 事件
    event Log(uint256 msg);

    /**
balance ：该地址的账户余额，单位是Wei
code ：该地址的合约代码，EOA 账户为空，CA 账户为非空
codehash ：该地址的合约代码的hash值
*/
    function get_balance() public returns (uint256) {
        emit Log(payAddr.balance);
        return addr.balance;
    }

    function get_code() public view returns (bytes memory) {
        return address(this).code;
    }

    function get_codehash() public view returns (bytes32) {
        return address(this).codehash;
    }

    function testTransfer() public payable {
        // 发送失败会revert,  Gas 固定为2300
        payAddr.transfer(10); // 单位是wei
    }

     // 转账函数，接收目标地址和转账金额（单位：wei）
    function transfer(address payable recipient, uint256 amount) public payable {
        // 检查合约余额是否充足
        require(address(this).balance >= amount, "balance not engough.");

        // 向目标地址转账
        recipient.transfer(amount);
    }

    // function testSend() public payable returns (bool) {
    //     bool success = payAddr.send(10); // 单位是wei
    //     return success;
    // }
}
