//SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract ipfsPic{
    address public owner;
    string public ipfsHash;

    constructor(){
        ipfsHash="noHashYet";
        owner=msg.sender;



    }

    function changeHash(string memory newHash)public {
        require(msg.sender==owner,"not owner");
        ipfsHash=newHash;
    }
}

//this contract has been deployed on sepolia test net on address: 0x7a082f6d931860d3f8d213ed5dc5bd829a491e29
// view on etherscan
//https://sepolia.etherscan.io/address/0x7a082f6d931860d3f8d213ed5dc5bd829a491e29