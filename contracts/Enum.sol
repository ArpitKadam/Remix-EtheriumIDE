// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// ENUM

contract Enum{
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    // Returns uint
    // -- Pending - 0
    // -- Shipped - 1
    // -- Accepted - 2
    // -- Rejected - 3
    // -- Canceled - 4

    function get() public view returns(Status){
        return status;
    }

    function set(Status _status) public{
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function pending() public {
        status = Status.Pending;
    }

    function accept() public {
        status = Status.Accepted;
    }

    function reject() public {
        status = Status.Rejected;
    }

    function shipped() public {
        status = Status.Shipped;
    }

    function reset() public {
        delete status;
    }
}