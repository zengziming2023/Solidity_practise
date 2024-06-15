// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Array {
    function testArray() public {
        uint[3] memory nftMem;
        uint[3] memory nftMem1 = [uint(100), 2, 3];
        // uint[3] memory nftMem2 = [1000, 2, 3];  // 编译报错      1000 默认转成 uint16 与 uint 类型不同
        // uint[3] memory nftMem4 = [1,2]; // 长度不匹配
        uint[3] memory nftMem5 = [uint(1), 2, 3];

        uint[3] storage nftMem3;

        uint size = 2;
        // uint[size] memory nft3;  // 静态数据不能用变量声明长度
        // uint[size][size] memory nft4;

        // 动态数组
        uint[] memory nft5;
        uint[] storage nft6;

        uint[] memory nft7 = new uint[](size);
        // uint[] memory nft8 = [uint(1), 2, 3];    // // 动态数组只有在storage位置才能用数组字面值
        uint[3] memory  staticArray = [uint(1), 2, 3];
        // uint[] memory dynamicArray = staticArray;    // 静态数组 和 动态数组 是不一样的类型

        nft7[0] = 1;
        nft7[1] = 2;


        uint num = nft7[0];

        staticArray[0] = 3;
        staticArray[1] = 4;
    }
}
