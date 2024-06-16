// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

struct AirDrop {
    address to;
    uint256 amount;
}

contract Mapping {
    AirDrop[] airDrop;

    mapping(address => AirDrop) airDrop2;

    function getAirDropAmount(address addr) public view returns (uint256) {
        // for (uint256 i = 0; i < airDrop.length; i++) {
        //     if(airDrop[i].to == addr){
        //         return airDrop[i].amount;
        //     }
        // }
        AirDrop memory urAirDrop = airDrop2[addr];

        return urAirDrop.amount;
    }
}
