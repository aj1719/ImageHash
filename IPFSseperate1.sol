// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract HashValuesIPFS {
    string ipfsHash;
    string transactionHash;

   //sending image hash 
    function sendHash(string memory x) public {
        ipfsHash = x;
    }
    // storing values(transaction hash) got from sending image hash
    function TransactionHash(string memory y) public {
    transactionHash=y;
    }
     string contractAddress;

    // storing values(contract address) got from sending image hash
    function ContractAddress(string memory a) public {
    contractAddress=a;
    }
    string publicKey;
    
    // storing values(imagePublic Key) got from sending image hash
    function PublicKey(string memory a) public {
    publicKey=a;
    }
}