// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// DoWhile Loop

contract DoWhile{

    // do{
    //     block of statement to be executed
    // } while (condition)

    uint256[] data;
    uint8 j = 0;

    function loop() public returns(uint256[] memory){
        do{
            j++;
            data.push(j);
        }while (j < 10);

        return data;
    }

}