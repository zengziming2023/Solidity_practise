// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MultiArray {
    function test() public {
        // 静态
        uint256[5][3] memory arr; // [col][row]   5列3行
        uint256[3][3][3] memory arr1;

        uint256[5][3] storage arr2;

        // 动态
        uint256[][] memory arr3;
        uint256[][3] memory arr4;
        uint256[][] storage arr5;
        uint256[][3] storage arr6;

        // 初始化
        uint256[3][2] memory arr7 = [[uint256(1), 2, 3], [uint256(4), 5, 6]];
        // uint[3][2] memory arr8 = [[1,2,3], [uint(4),5,6]];   // 编译报错 类型不匹配
        // uint[3][2] memory arr9 = [[uint(1),2,3], [uint(4)]];    // 编译报错 类型不匹配
    }

    uint256[][] storageArr;

    function initArray() public returns (uint256[][] memory) {
        uint256 n = 2;
        uint256 m = 3;
        for (uint256 i = 0; i < n; i++) {
            storageArr.push(new uint256[](m));
        }
        return storageArr;
    }

    uint256[][3] storageArr2;

    // function invalidPush() public {
    //     uint m = 2;
    //     storageArr2.push(new uint[m]);  // 静态数组长度不可改变，不可 push , pop
    // }

    function validPush() public {
        storageArr2[0].push(999); // storageArr2[0] 拿到的是一个动态数组
    }

    uint256[][] storageArr3 = [[uint256(1), 2, 3], [uint256(4), 5, 6]]; // 在 storage 的动态多维数组可以用字面值初始化

    function visitMemoryArr() public {
        uint256[3][2] memory arr = [[uint256(1), 2, 3], [uint256(4), 5, 6]];
        arr[0][0] = 7;
        arr[1][1] = 8;
    }
}
