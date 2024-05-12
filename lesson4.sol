// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageContextExample {
    address public contractOwner;
    uint256 public contractBalance;

    constructor() {
        contractOwner = msg.sender;
    }


    receive() external payable {
        contractBalance += msg.value;
    }


    function getSender() external view returns (address) {
        return msg.sender;
    }


    function getMessageValue() external payable returns (uint256) {
        return msg.value;
    }


    function getGasRemaining() external view returns (uint256) {
        return gasleft();
    }
}
