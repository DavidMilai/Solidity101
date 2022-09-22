// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVar()
        external
        view
        returns (
            address,
            uint,
            uint
        )
    {
        address sender = msg.sender; // address that called the function
        uint timeStamp = block.timestamp; // time the contract was called
        uint blockNum = block.number; // block number
        return (sender, timeStamp, blockNum);
    }
}
