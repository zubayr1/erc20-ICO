// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DappToken
{
    string public name = "Rawbin";
    string public symbol = "RWB";
    string public standard = "ERC_Rawbinv1.0";


    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf; 

    event Transfer(
      address indexed _from,
      address indexed _to,
      uint256 _value
    );

    //constructor
    constructor(uint256 _totalsupply)
  {
    totalSupply = _totalsupply;
    // allocate the initial supply
    balanceOf[msg.sender] = _totalsupply;
  }

  //transfer
  function transfer(address _to, uint256 _value) public returns(bool)
  {
    require(balanceOf[msg.sender]>=_value);

    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;

    emit Transfer(msg.sender, _to, _value);

    return true;
  }


}