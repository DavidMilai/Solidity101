// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

//custom error
error Unauthorized(address caller);

contract CustomError {
    address payable owner = payable(msg.sender);

    function withdraw() public {
        if (msg.sender != owner) revert Unauthorized(msg.sender);
        //  revert("error"); uses alot of gas

        owner.transfer(address(this).balance);
    }
}
