// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Mapping {
    mapping(address => string) public moods;

    function getMood(address user) public view returns (string memory) {
        return moods[user];
    }

    function setMood(string memory mood) public {
        moods[msg.sender] = mood;
    }
}

contract Enums {
    enum Status {
        TODO,
        IN_PROGRESS,
        DONE,
        CANCELED
    }

    mapping(uint256 => Status) todos;

    function addTask(uint256 id) public {
        todos[id] = Status.TODO;
    }

    function updateStatus(uint256 id, Status newStatus) public {
        todos[id] = newStatus;
    }

    function getStatus(uint256 id) public view returns (Status) {
        return todos[id];
    }

    function markTaskInProgress(uint256 id) public {
        todos[id] = Status.IN_PROGRESS;
    }
}

contract Struct {
    enum Status {
        TODO,
        IN_PROGRESS,
        DONE,
        CANCELED
    }

    struct Task {
        string title;
        string description;
        Status status;
    }
    mapping(uint256 => Task) tasks;

    function addTask(
        uint256 id,
        string memory title,
        string memory description
    ) public {
        //method 1
        tasks[id] = Task(title, description, Status.TODO);

        //method 2
        tasks[id] = Task({
            title: title,
            description: description,
            status: Status.TODO
        });

        //method 3
        Task memory task;
        task.title = title;
        task.description = description;
        task.status = Status.TODO;

        tasks[id] = task;
    }

    function editTaskTitle(uint256 id, string memory newtitle) public {
        tasks[id].title = newtitle;
    }
}

contract Inheritance{}