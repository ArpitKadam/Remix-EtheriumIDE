// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//EVENT TICKET 

contract EventTicket{

    uint256 NumberofTickets;
    uint256 TicketPrice;
    uint256 TotalAmount;
    uint256 StartAt;
    uint256 EndAt;
    uint256 Timerange;
    string  Message = "Buy your first Event Ticket";

    constructor(uint256 _TicketPrice){

        TicketPrice = _TicketPrice;
        StartAt = block.timestamp;
        EndAt = block.timestamp + 7 days;
        Timerange = (EndAt - StartAt) / 60 / 60 / 24;

    }

    function buyTicket(uint256 _value) public returns(uint256 TicketId){

        NumberofTickets++;
        TotalAmount += _value;
        TicketId = NumberofTickets;

    }

    function grtAmount() public view returns(uint256){

        return TotalAmount;

    }

}