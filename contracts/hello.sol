// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyFisrtContract{
    // string public hey = "Hey Arpit";
    // uint public heyNum = 42;
    // string public myName="Arpit";
    // address public adrs = address(0);
    
    string public hey;
    uint256 public num;

    // constructor(string memory _hey,uint _num) {
    //     hey = _hey;
    //     num=_num;
    // }

    function addInfo(string memory _hey, uint _no) public {
        hey=_hey;
        num = _no;
    }

}
