// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function serPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "Paused");
        _;
    }
    modifier cap(uint _x) {
        require(_x < 100, "x>=100");
        _;
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    function incBy(uint _x) external cap(_X) {
        count += 1;
    }
}
