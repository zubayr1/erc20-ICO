// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DappToken
{
    string public name = "Rawbin";
    string public symbol = "RWB";
    string public standard = "ERC_Rawbinv1.0";



    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf; 

    //constructor
    constructor(uint256 _totalsupply)
  {
    totalSupply = _totalsupply;
    // allocate the initial supply
    balanceOf[msg.sender] = _totalsupply;
  }

  


}