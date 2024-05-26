// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Justinetoken {
    address public real;
    constructor(address owner) {
        real = owner;
    }
    mapping(address => uint) public balance;
    modifier realOwner() {
        require(msg.sender == real, "only the real owner can use this function");
        _;
    }
    function Mint(address owner, uint Justtoken) public realOwner {
        balance[owner] += Justtoken;
    }
    function Burn(address owner, uint Justtoken) public {
        require(balance[owner] >= Justtoken, " the balance is not enough");
        balance[owner] -= Justtoken;
    }
    function Transfer(address realowner, address otherowner, uint Justtoken) public {
        require(balance[realowner] >= Justtoken, "the balance is not enough");
        balance[realowner] -= Justtoken;
        balance[otherowner] += Justtoken;
    }
}
