// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// If...Else

contract IfElse{

    uint256 public myNum = 5;
    string public myString;

    // function get(uint256 _num) public returns(string memory){
    //     if(_num == 5){
    //         myString = "The Value is 5";
    //     } else {
    //         myString = "The Value is not 5";
    //     }
    //     return myString;
    // }

    function shortHand(uint256 _num) public returns(string memory){
        return _num == 5 ? myString = "The Value is 5" : myString = "Value not 5";
    }

}