// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract NFTCounter{

    uint256 public numberofNFT;

    function checktotalNFT() public view returns(uint256) {
    return numberofNFT;
    }

    function addNFT() public {
        numberofNFT += 1;
    }

    function deleteNFT() public {
        numberofNFT -= 1;
    }
}