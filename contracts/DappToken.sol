// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DappToken
{
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