pragma solidity ^0.5.16;

contract DuffToken {
    // we need a constructor
    // way to set the tokens
    // way to read the total number of tokens
  uint256 public totalSupply;

  constructor () public {
    totalSupply = 1000000;
  }
}
