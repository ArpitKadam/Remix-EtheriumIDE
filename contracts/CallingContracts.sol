// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Callee {
    uint public x;
    uint public value;

    function setX(uint _x) public returns (uint) {
        x = _x;
        return x;
    }

    function setXandsendEther(uint _x) public payable returns (uint, uint) {
        x = _x;
        value = msg.value;

        return (x, value);
    }
}

contract Caller {
    event SetX(uint x);
    event SetXAndSendEther(uint x, uint value);

    function setX(Callee _callee, uint _x) public {
        uint x = _callee.setX(_x);
        emit SetX(x); // Emit the value of x
    }

    function setXandsendEther(Callee _callee, uint _x) public payable {
        (uint x, uint value) = _callee.setXandsendEther{value: msg.value}(_x);
        emit SetXAndSendEther(x, value); // Emit the values of x and value
    }
}
