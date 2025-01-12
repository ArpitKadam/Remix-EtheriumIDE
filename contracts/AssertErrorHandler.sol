// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Assert Error Handler

contract Assert{

    bool public result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public{
        uint256 sum = _num1 + _num2;
        assert(sum > 10);
        result = true;
    }

    function getresult() public view returns(string memory){
        if(result == true){
            return "The Sum is Greater than 10";
        } else {
            return "The Sum is Lesser than or Equal to 10";
        }
    }

}