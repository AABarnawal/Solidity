// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Payablee {
    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    //add balance
    function AddBalance() public payable {
    }
    //send ammount
    function sendBalance() public {
        msg.sender;
        user.transfer(1 ether);
    }
    //get balance
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}
