// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract assesment {
    uint public displayvalue;

    function getValue(uint _setValue) external {
        
        require(_setValue != 3, "New value cannot be three");
        assert(_setValue != 15); 
        
        if (_setValue == 8) {
            revert("New value cannot be 8");
        }

        displayvalue = _setValue;
    }
}
