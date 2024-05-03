// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract calculator{
    //numbers 
    uint public n1;
    uint public n2;
    cconstructor(uint _n1, uint _n2) {
        n1 = _n1;
        n2 = _n2;
    }

    //calculation
    function addition() public view returns(uint){
        return n1+n2;
    } 
    function subtraction() public view returns(uint){
        return n1-n2;
    } 
    function division() public view returns(uint){
        return n1/n2;
    } 
    function multiplication() public view returns(uint){
        return n1*n2;
    } 
}




    
