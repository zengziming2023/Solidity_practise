// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract ArraySlice{

    event Log(string msg);

    uint[5] storageArr = [uint(0), 1, 2, 3, 4];

    function extracFourBytes(string calldata payload) public  {
            string memory leading4Bytes = string(payload[:4]);
            // console.info(leading4Bytes);
            emit Log(leading4Bytes);
    }

    function foo(uint[] calldata intArr)  public returns(uint[] memory) {
        // uint[3] storage s1 = storageArr[0:2]; // 不能对 storage 位置的数组进行切片

        uint[5] memory memArr = [uint(0), 1, 2, 3, 4];
        // uint[3] memory s2 = memArr[1:4];    // 不能对 memory 位置的数组进行切片

        uint[] memory arr3 = intArr[0:2];
        return arr3;
    }

}