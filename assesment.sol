// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract ErrorHandling {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
        value = 0;
    }


    function setValue(uint _value) public {

        require(msg.sender == owner, "Caller is not the owner");
        
        require(_value > 0, "Value must be greater than 0");
        
        value = _value;
    }


    function incrementValue(uint _increment) public {
        value += _increment;
        
        assert(value >= _increment);
    }

    function resetValue() public {
        if (msg.sender != owner) {
            revert("Caller is not the owner");
        }
        
        value = 0;
    }

    function getValue() public view returns (uint) {
        return value;
    }
}
