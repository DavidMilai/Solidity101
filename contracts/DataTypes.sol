// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataTypes {
    string public myString = "Hello world";

    bool public b = true;

    int256 public minInt = type(int256).min; // getting the minimum int
    int256 public maxInt = type(int256).max; // getting the maximum int

    address public myAddrex = 0x111ceaFFFFCCCC; //sample address

    bytes32 public b32 = 0x111ceaFFFFCCCC;

}