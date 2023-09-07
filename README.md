# Torque and Acceleration

This is a sample project which calculates the torque and acceleration of the given values and prints the result in the frontend. 

## Description

This program is based on linking the frontend with the smart contract. First you need to connect the wallet and then when you click on torque button , it displays the torque of the respective values passed and if you click on acceleration, it displays the acceleration of the respective values passed. The page is designed in the pages->index.js and the backend smart contract is in contracts->Assessment.sol

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Assessment.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile Assessment.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Assessment" contract from the dropdown menu, and then click on the "Deploy" button.

To integrate it to the frontend, you need to run the following commands in the project directory:

1. Inside the project directory, in the terminal type: npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
   
   After you run this command, you need to connect to the hardhat network in metamask and import account using any private key so that we get test tokens.
   
4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
5. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/

## Authors

Yashwanth BU
[@yashwanthbuu@gmail.com]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
