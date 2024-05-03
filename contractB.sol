// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract contractB {
    // Mapping to store string data against addresses
    mapping(address => string) private stringData;

    // Function to store string data for a specific address
    function setString(address _address, string memory _data) public {
        stringData[_address] = _data;
    }

    // Function to retrieve string data for a specific address
    function getString(address _address) public view returns (string memory) {
        return stringData[_address];
    }
}
