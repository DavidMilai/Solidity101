// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Mapping{
    
    mapping(address =>string) public moods;

    function getMood(address user) public view returns (string memory){
        return moods[user];
    } 
    
    function setMood(string memory mood) public {
        moods[msg.sender] = mood;
    }
}
