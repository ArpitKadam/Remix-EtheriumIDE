// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Local Variables

contract LocalVariables{

    uint public myUint;

    function local() public returns(address, uint256, uint256) {
        // Variables defined under this function scope
        // will not be stored on BLOCKCHAIN

        uint256 i = 345;
        myUint = i;

        i += 45;
        address myAddress = address(1);

        return (myAddress, myUint, i);
    }
}