// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Token is ERC20  {
    uint256 private _minOwnerBurn; 
    address public owner;
    constructor(address _owner) ERC20("TOKEN", "TKN"){
    owner = _owner;
        _minOwnerBurn = 1000; 
    }

    modifier onlyUnderMinOwnerBurn(address _address, uint256 amount) {
        require(balanceOf(_address) - amount >= _minOwnerBurn, "Exceeds minimum owner burn");
        _;
    }

    function mint(address to, uint256 amount) public {
        require (owner == to, "you are not the owner");
        _mint(to, amount);
        
    }

    function burn(address _address,uint256 amount) public onlyUnderMinOwnerBurn(_address,amount) {
        if (amount <= _minOwnerBurn){
             _burn(_address, amount);
        
        }else {revert("you exceed to a minimum amount");}
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        return super.transfer(to, amount);
    }

    function setMinOwnerBurn(uint256 minOwnerBurn) public {
        _minOwnerBurn = minOwnerBurn; 
    }

    function getMaxOwnerBurn() public view returns (uint256) {
        return _minOwnerBurn; 
    }
}
