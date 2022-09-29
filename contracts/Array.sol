// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array {
    uint[] public nums = [1, 2, 3, 7, 8, 9]; //dynamic array
    uint[3] public numsFixed = [4, 5, 6];

    function examples() external {
        nums.push(10); //  [1,2,3,7,8,9,10]
        uint x = nums[3]; //7
        nums[2] = 50; // [1,2,50,7,8,9,10]
        delete nums[0]; // [0,2,50,7,8,9,10]
        nums.pop(); // [1,2,50,7,8,9]
        uint len = nums.length; //6

        // creating array in memory
        uint[] memory a  = new uint [](5);
    }

    function returnArray() external view returns (uint[] memory) {
        return nums;
    }

}
