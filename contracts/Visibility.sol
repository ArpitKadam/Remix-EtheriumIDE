// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Base{
    function privateFunc() private pure returns(string memory) {
        return "This is a Private Function";
    }

    function testprivateFunc() public pure returns(string memory) {
        return privateFunc();
    }

    function internalFunc() internal pure returns(string memory) {
        return "This is an Internal Function";
    }
    
    function testInternalFunc() public pure virtual returns(string memory){
        return internalFunc();
    }

    function publicFunc() public pure returns(string memory) {
        return "This is a Public Function";
    }

    function externalFunc() external pure returns (string memory) {
        return "This is an External Function";
    }

    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
}

contract Child is Base{
    function testInternalFunc() public pure override returns (string memory){
        return internalFunc();
    }
}