// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Events{
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!!!");
        emit Log(msg.sender, "Hello Blockchain");
        emit AnotherLog();   
    }
}