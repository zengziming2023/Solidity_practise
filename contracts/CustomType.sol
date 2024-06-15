// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract CustomType {
    type Weight is uint128;
    type Price is uint128;

    event Log(string msg);
    event Log(uint128);

    function testCustomType() public {
        Weight w1 = Weight.wrap(10);

        Price p1 = Price.wrap(5);

        // Weight wp = w1 + p1;     // compile error

        uint128 u = Weight.unwrap(w1);

        Weight w2 = Weight.wrap(20);
        // Weight wp = w1 + w2; // 操作符不继承
        Weight wp = addWeight(w1, w2);
        emit Log(Weight.unwrap(wp));
    }

    function addWeight(Weight w1, Weight w2) public pure returns (Weight) {
        return Weight.wrap(Weight.unwrap(w1) + Weight.unwrap(w2));
    }
}
