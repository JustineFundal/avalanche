// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Admin{

        address public  admin;

        constructor(){
        admin = msg.sender;
    }

     modifier onlyAdmin { 
        require (admin == msg.sender, "only admin can access");
        _;
    }


}
