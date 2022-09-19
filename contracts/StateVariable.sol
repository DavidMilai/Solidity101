// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract StateVariables {
    uint public myUint = 123; // saved inside the bloack chain

    function simpleFunction() external {
        uint notStateVariable = 456; // not saved on the blockchain
    }
}
