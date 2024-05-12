// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mathematics {

    function addition(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    

    function subtraction(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
    

    function multiplication(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
    

    function division(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Division by zero");
        return a / b;
    }
}
