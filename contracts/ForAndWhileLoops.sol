// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint i = 0; i < 10; i++) {
            //code
            if (i == 3) {
                continue;
                //this block doesnt execute
            }

            //more code
            if (i == 3) {
                break;
            }
        }

        uint j = 0;
        while (j < 10) {
            j++;
        }
    }


function sum(uint n) external pure returns (uint){
    uins s;

    for(uint i;i<=10;i++){
        s+=i
    }
    return s;
}


}
