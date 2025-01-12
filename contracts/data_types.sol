// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataTypes{

    // bool public hey;
    // bool public no = true;

    // UINT means Non-negative integers

    // uint8 public myUint8; // range 0 - 2^8 ==>> 256 - 1
    // uint16 public myUint16; // range 0 - 2^16 ==>> 65,53 - 1
    // uint32 public myUint32; // range 0 - 2^32 ==>> 4,294,967,295 - 1
    // uint64 public myUint64; //range 0->2^64 - 1
    // uint256 public nyUint256; // range 0 -> 2^256 - 1

    // INT means Negative Integers are allowed

    // int256 public myInt256; // ranges from -2,147,483,648 to 2,147,483,647
    // int96 public myInt96;// -range of 0->96 as an example. The range is from -56 and 96
    // int24 public myInt24; // -range of 0 to 8,388,607 , the ranges are from -12,800 to 12,800
    // int16 public myInt16;// -range of 0->16 as an example. The range is from -32,768 to 32,768
    // int8 public myInt8; // -range of 0 >95 as an example

    // Now you can add min and max int

    // int public minInt = type(int).min;
    // int public maxInt = type(int).max;

    // ARRAY 
        // -- fixed-sized bytes arrays
        // -- dynamically-sized bytes arrays

    // bytes1 public a;
    // bytes2 public b;
    // bytes3 public c;
    // bytes4 public d;
    // bytes5 public e;
    // bytes6 public f;
    // bytes7 public g;
    // bytes8 public h;  // the range of this is from 0 to 12,800 as an example. The range is from 0->96

    // bytes1 public i = 0xb9; 
    // bytes5 public j = "Hello"; // string type
    // bytes8 public k = "\x04\x02\x03\x0a\x06\x0d\x08\x00";// This is not going to be same as bytearray
        // 0xb9 means b, 0xa1 means a, 0x0c means c etc. And the bytes are stored in hex format as an example
    // and this is how you convert it into bytes
    // bytes7 public l = "\xc3\xd8";// "C" + "\xe9"; 
        // \xc3 means c, \xb9 means b , the hex form of these are stored as an example. You can see that this is not same
    // bytes25 public m;   // a dynamic-sized byte array

    // bytes19 public n = "Hello how are you? ";

    // ADDRESS Types

    // address public hey;
    // address public me = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;

    // DEFAULT VALUES

    // bool public defaultbool; // false, because by default a boolean type has a default value
    // address public addressy;// Default value of an address is null. So the default address is 0x0
    // uint256 public defaultUint; // The default value of a uint256 type is zero (which is hex: "0").
    // string public defaultString;// empty
    // int256 public defaulInt;// 0
    
}
