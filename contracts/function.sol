// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract LearnFunction{

    uint256 public hey;
    // uint256 hey;

    function getInfo() public view returns(uint256){
        return hey;
    }

    function updateData(uint256 _hey) public{
        hey = _hey;
    } 

    function get(uint256 _a, uint256 _b) public returns (uint256){
        uint256 sum = _a + _b;
        hey  = sum;
        return sum;
    }
}