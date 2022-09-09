// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

// A library is like a contract with reusable code, which can be called by other contracts.
// Deploying common code can reduce gas costs.
library SafeMath {
    function testUnderFlow() public pure returns (uint256) {
        uint256 x = 0;
        x--;
        return x;
    }

    function testUncheckedUnderFlow() public pure returns (uint256) {
        uint256 x = 0;
        unchecked {
            x--;
        }
        return x;
    }
}
