// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract IfElse{

    string ageStage;

    constructor(){
        ageStage = "not set.";
    }

    function testIfElse(uint age) public {
        if(age < 18){
            ageStage = "teen";
        } else if(age < 65){
            ageStage = "adult";
        }else{
            ageStage = "elderly";
        }
    }

    function getAgeStage() public view returns(string memory){
        return ageStage;
    }
}