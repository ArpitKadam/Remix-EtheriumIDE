// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract StateVariables{

    string public myState;
    string public myNum;

    // string public defaultText = "Hey this is default text";
    // uint256 public defaultNum = 5;

    // bytes public defaultbyte = "Default Byte";

    // uint256[] public myNumber;

    constructor(string memory _text, string memory _num) {
        myState = _text;
        myNum = _num;
    }
}