// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Import the contract you want to interact with
import "./contractB.sol";

contract contractA {
// Declare a variable of the imported contract type
    contractB contractBInstance;

    // Address of the deployed OtherContract
    address contractBAddress = 0x38cB7800C3Fddb8dda074C1c650A155154924C73;

    cconstructor() {
        // Create an instance of the OtherContract
        contractBInstance = contractB(contractBAddress);
    }
    // Function to call a method in OtherContract
    function callOtherContractFunction(address _add)view public {
        // Call a function in OtherContract
        contractBInstance.getData(_add);
    }
}
















































