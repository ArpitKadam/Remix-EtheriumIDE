// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//PURE

contract Pure{

    uint256 num1 = 4;
    uint256 num2 = 6;

    // pure is only limited to loacal variable and not state variable.
    // we need to use view instead of pure to view the vatiable
    // but we will define new local variables in the function and use pure to see them

    function getData() public pure returns(uint256, uint256){

        uint256 mynum1 = 30;
        uint256 mynum2 = 50;
        return (mynum1, mynum2);

    }

}