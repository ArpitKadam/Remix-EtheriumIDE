// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataLocation {
    uint[] public arr;
    mapping(uint => address) public map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) public myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);
        
        // Accessing struct in storage
        MyStruct storage myStruct = myStructs[1];
        
        // Creating a struct in memory
        MyStruct memory myMemoryStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // Internal function logic here
    }

    function g(uint[] memory _arr) public pure returns (uint[] memory) {
        // Return the array for demonstration purposes
        return _arr;
    }

    function h(uint[] calldata _arr) external pure {
        // This function can read the calldata array
    }
}
