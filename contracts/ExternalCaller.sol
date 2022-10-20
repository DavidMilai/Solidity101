// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface MinimalERC20 {
    function balanceOf(address account) external view returns (uint256);
}

contract ExtrnalCaller {
    MinimalERC20 externalContract;

    constructor(address someERC20Contract) {
        externalContract = MinimalERC20(someERC20Contract);
    }

    function checkBalance() public view {

        uint balance = externalContract.balanceOf(msg.sender);
        require(balance>0,"You are poor");
    }
}
