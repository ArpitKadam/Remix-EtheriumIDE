// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Global Variables

contract GlobalVariable{

    address public owner;
    address public MyBlockhash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public FirstFour;

    constructor(){
        owner = msg.sender;
        // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        MyBlockhash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit; 
        number = block.number;  
        timestamp = block.timestamp;  	
        origin = tx.origin;											   	    	 		 	          // The Address of the Contract that called this Function 
        gasprice = tx.gasprice;	   
        callData = msg.data;                                              	
        FirstFour = msg.sig;
    }

}