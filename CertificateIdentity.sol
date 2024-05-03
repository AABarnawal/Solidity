// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract issuer {

    struct certiverification{
        string certihash;
    }
    mapping(address=>certiverification) certitable;

    event status(bool st);
    // event certificateStatus(bool cst);

    function setcertitable(address _add, string memory _certihash) public returns(bool){
        certitable[_add].certihash = _certihash;
        emit status(true);
        return true;
    }

    function getcertitable(address _add) public view returns(bool){
        //return true when its available other wise false
        if(bytes(certitable[_add].certihash).length>0){
            // emit certificateStatus(true);
            return true;
        }else{
            // emit certificateStatus(false);
            return false;
        }
    }

    
}
