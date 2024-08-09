// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract HashValuesIPFS {
    string ipfsHash;
    string transactionHash;
    string retreiveHash;
 // providing values(reteive transaction hash) got from sending image hash
    function provideHash(string memory z) public {
    retreiveHash=z;
    }
    string contractAddress;
    string retreiveAddress;
    // providing values(contract address) got from sending image hash
    function provideAddressValue(string memory b) public {
    retreiveAddress=b;
    }
    string publicKey;
    string providePublicKey;
     // providing values(imagePublic Key) got from sending image hash
    function provideImagePublicKey(string memory b) public {
    providePublicKey=b;
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