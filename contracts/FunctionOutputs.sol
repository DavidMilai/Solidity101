// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutputs {
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function returnManyNamed() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
        // This saves on gas
    }

    function destructingAssignment() public pure {
        (uint y, bool b) = returnManyNamed();
        (, bool c) = returnManyNamed();
    }
}
