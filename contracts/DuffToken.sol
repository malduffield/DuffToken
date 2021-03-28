pragma solidity ^0.5.16;

contract DuffToken {
    // we need a constructor
    // way to set the tokens
    // way to read the total number of tokens
  uint256 public totalSupply;

  mapping(address => uint256) public balanceOf;

  constructor (uint256 _initialSupply) public {
    // allocate initial supply
    balanceOf[msg.sender] = _initialSupply;
    totalSupply = _initialSupply;
  }
}
