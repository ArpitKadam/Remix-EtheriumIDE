// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Array{

    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    uint[10] public myFixedSizeArray;

    function get(uint _i) public view returns(uint){
        return arr[_i];
    }

    function getArr() public view returns (uint[] memory){
        return  arr;
    }

    function push(uint _i) public {
        arr.push(_i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint){
        return arr.length;
    }

    function remove(uint _index) public{
        delete arr[_index];
    } 
}