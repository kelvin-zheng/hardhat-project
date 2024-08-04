// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


/* 
There are 3 types of variables in Solidity

local
    declared inside a function
    not stored on the blockchain
state
    declared outside a function
    stored on the blockchain
global (provides information about the blockchain)
*/
contract Variables {
    string public text = "Hello";
    uint256 public num = 123;
    
    function doSomething() public {
        uint256 i = 456;
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;

    }

}
