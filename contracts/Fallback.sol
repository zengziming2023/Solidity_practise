// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Callee {
    event FunctionCalled(string);

    function foo() external payable {
        emit FunctionCalled("this is foo");
    }

    // 如果receive 没有定义，会调fallback 兜底
    // receive() external payable {
    //     emit FunctionCalled("this is receive.");
    // }

    fallback() external payable {
        emit FunctionCalled("this is fallback.");
    }
}

contract Caller {
    address payable private callee;

    constructor() {
        callee = payable(address(new Callee()));
    }

    // 触发receive
    function transferReceive() external payable {
        callee.transfer(1);
    }

    function sendReceive() external payable {
        bool success = callee.send(1);
        require(success, "send failed.");
    }

    function callReceive() external payable {
        (bool success, bytes memory data) = callee.call{value: 1}("");
        require(success, "send failed.");
    }

    function callFoo() external {
        (bool success, bytes memory data) = callee.call{value: 1}(
            abi.encodeWithSignature("foo()")
        );
        require(success, "call foo failed.");
    }

    function callFallback() external {
        (bool success, bytes memory data) = callee.call{value: 1}(abi.encodeWithSignature("funNotExit()"));
        require(success, "call fun failed, change to call fallback.");
    }
}

contract Fallback {
    /**
    fallback 函数可以兜底两类函数不存在的情况：
        receive 函数不存在（因为没有定义）
        普通函数不存在（因为没有定义）
    */
}
