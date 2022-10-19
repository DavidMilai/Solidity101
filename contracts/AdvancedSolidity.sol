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

contract Enums{

enum Status{
    TODO,
    IN_PROGRESS,
    DONE,
    CANCELED
}

    mapping(uint256 => Status) todos;


    function addTask(uint256) public{
        todos[id] =Status.TODO;
    }

    function updateStatus(uint256 id, Status newStatus) public{
        todos[id] = newStatus;
    }

    function getStatus(uint256 id) public view returns (Status){
        return todos[id];
    }
}
