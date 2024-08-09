// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract HashValuesIPFS {
    string ipfsHash;
    string transactionHash;
    string retreiveHash;

   //sending image hash 
    function sendHash(string memory x) public {
        ipfsHash = x;
    }
    // storing values(transaction hash) got from sending image hash
    function TransactionHash(string memory given1,string memory provided1) public {
    transactionHash=given1;
    retreiveHash=provided1;
    }
    // providing values(reteive transaction hash) got from sending image hash
    //function provideHash(string memory z) public {
    //retreiveHash=z;
    //}
    //getting image through stored values
    function getHash1 ()public view returns(string memory){
        if(keccak256(bytes(retreiveHash)) == keccak256(bytes(transactionHash))){
            return ipfsHash;
        } else {
            return"";
        }
    }   
    string contractAddress;
    string retreiveAddress;

    // storing values(contract address) got from sending image hash
    function ContractAddress(string memory given2,string memory provided2) public {
    contractAddress=given2;
    retreiveAddress=provided2;
    }
    // providing values(contract address) got from sending image hash
    //function provideAddressValue(string memory b) public {
    //retreiveAddress=b;
    //}
    //getting image through stored values
    function getHash2 ()public view returns(string memory){
        if(keccak256(bytes(retreiveAddress)) == keccak256(bytes(contractAddress))){
            return ipfsHash;
        } else {
            return"";
        }
    }
    string publicKey;
    string providePublicKey;
    
    // storing values(imagePublic Key) got from sending image hash
    function PublicKey(string memory given3,string memory provided3) public {
    publicKey=given3;
    providePublicKey=provided3;
    }
    // providing values(imagePublic Key) got from sending image hash
    //function provideImagePublicKey(string memory b) public {
    //providePublicKey=b;
    //}
    //getting image through stored values(imagePublic Key)
    function getHash3 ()public view returns(string memory){
        if(keccak256(bytes(providePublicKey)) == keccak256(bytes(publicKey))){
            return ipfsHash;
        } else {
            return"";
        }
    } 
    function getHash4 ()public view returns(string memory){
        if((keccak256(bytes(providePublicKey)) == keccak256(bytes(publicKey))) &&
        (keccak256(bytes(retreiveAddress)) == keccak256(bytes(contractAddress))) &&
        (keccak256(bytes(retreiveHash)) == keccak256(bytes(transactionHash))))
        {
            return ipfsHash;
        } else {
            return"";
        }
    } 
}