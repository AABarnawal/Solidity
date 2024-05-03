// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract listeners {
    struct student {
        string name;
        uint8 roll;
    }

// Declaring different data types


// Creating mapping

mapping (uint8 => student) public result;

// Function adding values to the mapping

function adding_values(uint8 _roll, string memory _name) public { 
    result[_roll].name = _name;

    result[_roll].roll = _roll;
}
// Function to retrieve

// values from a mapping

function getstudent_result(uint8 _roll)public view returns (student memory) { 
    return result[_roll];
}

}
