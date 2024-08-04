// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


/* 
Primitive Data Types
Here we introduce you to some primitive data types available in Solidity.

boolean
uint256
int256
address 
*/
contract Primitives {
    bool public boo = true;
    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */

    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123;

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
   int8 public i8 = -1;
   int256 public i256 = 456;
   int256 public i = -123;

   /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
   bytes1 a = 0xb5;
   bytes1 b = 0x56;

   // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

   

}
