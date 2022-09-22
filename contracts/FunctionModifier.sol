// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function serPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused(){
                require(!paused, "Paused");
;
    }

    function inc() external whenNotPaused{
        count += 1;
    }

    function dec() external whenNotPaused{
         count -= 1;
    }
}
