// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract BytesArray{

    function testBytesArray() public {
        bytes memory bstr = new bytes(10);
        string memory message = string(bstr);

        string memory msg2 = "hello world";
        bytes memory bstr2 = bytes(msg2);

        // msg2.length;    // string 拿不到长度 
        // msg2[0];            // string 不能进行下标访问

        uint length = bstr2.length; 
        bytes1 b = bstr2[0];

    }
}