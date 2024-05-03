// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract crowdfunding {
    struct request{                                 //request
        string description;
        address payable recipient;
        uint value;
        bool completed;
        uint no_of_voters;
        mapping(address => bool) votes;
    }
    mapping (uint=>request) public requests;        // holds our request
    mapping (address=>uint) public contributors;    //contribution with each and every interst
    uint public no_of_request;                      //number of request
    address public manager;                         //manager
    uint public minimumcontribution;
    uint public deadline;
    uint public target;
    uint public raisedAmmount;
    uint public no_of_contributors;
    
    constructor(uint _target, uint _deadline) {      //CONSTRUCTOR
        target = _target;
        deadline = block.timestamp + _deadline;     //500sec + 60 sec = 560sec
        minimumcontribution = 100 wei;              //ammount want for contribution 
        manager = msg.sender;                       //manager address
    }

    modifier isManager{
        require(msg.sender==manager,"you are not manager");
        _;
    }
    function createRequest(
        string calldata _discription,
        address payable _recp,
        uint _value ) public isManager {
            request storage newRequest = requests[no_of_request];
            no_of_request++;
            newRequest.description = _discription;
            newRequest.recipient = _recp;
            newRequest.value = _value;
            newRequest.completed = false;
            newRequest.no_of_voters = 0;
    }
    
    function contribution() public payable{
        require(block.timestamp<deadline,"you are late");
        require(msg.value>=minimumcontribution,"minimun contribution require in 100 wei");
        if(contributors[msg.sender]==0){
            no_of_contributors++;
        }
        contributors[msg.sender] += msg.value;
        raisedAmmount +=msg.value;
    }
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    



}
