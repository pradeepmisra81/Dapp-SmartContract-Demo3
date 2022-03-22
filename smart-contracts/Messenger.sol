// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Messenger {
    address owner;
    string[] messages;

    constructor() public {
        owner = msg.sender;
    }

    function add(string memory newMessage) public {
        require(msg.sender == owner);
        messages.push(newMessage);
    }

    function count() view public returns(uint) {
        return messages.length;
    }

    function getMessages(uint index) view public returns(string memory) {
        return messages[index];
    }
}