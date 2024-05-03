// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract lottery {
    address public manager;
    address payable[] participant;
    address payable public winner;
    constructor() {
        manager = msg.sender;
    }
    function participate() public payable {
        require(msg.value==1 ether, "balance should be 1 ether");
        participant.push(payable(msg.sender));
    }
    function getBalance() public view returns(uint){
        require(msg.sender==manager, "you are not the manager");
        return address(this).balance;
    }
    function random(uint range) public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(
            block.difficulty,
            block.timestamp,
            msg.sender,
            blockhash(block.number - 1)
        ))) % range;
    }


    function pickWinner() public {
        // require(manager == msg.sender, "you are not manager");
        // require(uint(participant.length)>=3, "participant can get");
        uint index = random(3);
        winner = participant[index];
        winner.transfer(getBalance());
        participant = new address payable[](0);

    }
}
