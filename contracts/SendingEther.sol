// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ReceiveEther{

    receive() external payable {}

    function getBalance() public view returns (uint256){
        return address(this).balance;
    }
}

contract SendEther{

    function SendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function SendViaSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function SendViaCall(address payable _to) public payable {
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Falied to call Ether");
    }
}
