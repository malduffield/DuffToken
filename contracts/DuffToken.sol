pragma solidity ^0.5.16;

contract DuffToken {
  string public name = "Duff Token";
  string public symbol = "DUFT";
  string public standard = "Duff Token v1.0";
  uint256 public totalSupply;

  mapping(address => uint256) public balanceOf;

  constructor (uint256 _initialSupply) public {
    // allocate initial supply
    balanceOf[msg.sender] = _initialSupply;
    totalSupply = _initialSupply;
  }
}
