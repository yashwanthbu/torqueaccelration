// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    
    uint256 public balance;
   

    constructor(uint initBalance) payable {
        
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }
    function acceleration(uint mass,uint force) public {
        balance= force/mass;
        //simple formula to find the acceleration of a body
    }
  

    function torque(uint256 force, uint256 momentfrc) public payable {
        balance=force*momentfrc*1;
        //simple formula to find the torque of a rotating body
    }

    
}
