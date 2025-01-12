// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// VIEW

contract View{
    uint256 num1 = 2;
    uint256 num2 = 7;

    // usinf View to check the state variable

    function getResult() public view returns(uint256, uint256){
        return (num1, num2);
    }

    function getProduct() public view returns(uint256 product, uint256 total){

        product = num1*num2;
        total = num1+num2;
        
    }

}