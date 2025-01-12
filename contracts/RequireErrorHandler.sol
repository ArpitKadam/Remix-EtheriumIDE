// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Require Error Handling

contract Require{

    function checkInput(int64 _input) public pure returns(string memory){
        require(_input >= 0, "The number is really negative");
        require(_input > 0, "The number is really positive");

        return  "Input is int64";
    }
}