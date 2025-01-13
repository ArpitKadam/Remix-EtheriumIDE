// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ReceiveEther {
    // Function to receive Ether
    receive() external payable {}

    // View contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendEther {
    // Transfer method
    function SendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    // Send method
    function SendViaSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    // Call method
    function SendViaCall(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
