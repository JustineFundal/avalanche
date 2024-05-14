// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract project {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
        value = 0;
    }


    function setValue(uint _value) public {

        require(msg.sender == owner, "you are not the owner");
        
        require(_value > 100, "Value must be greater than 100");
        
        value = _value;
    }


    function incrementValue(uint _increment) public {
        assert(value >= _increment);
       
        value += _increment;
        
        
    }

    function resetValue() public {
        if (msg.sender != owner) {

            revert("you are not the owner");

        }
        else {
            value = 0;
        }
        
        
        

    }

    function getValue() public view returns (uint) {
        return value;
    }
}
