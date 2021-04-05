pragma solidity ^0.5.16;

contract DuffToken {
  string public name = "Duff Token";
  string public symbol = "DUFT";
  string public standard = "Duff Token v1.0";
  uint256 public totalSupply;

  event Transfer(
    address indexed _from,
    address indexed _to,
    uint256 _value
    );

  mapping(address => uint256) public balanceOf;

  constructor (uint256 _initialSupply) public {
    // allocate initial supply
    balanceOf[msg.sender] = _initialSupply;
    totalSupply = _initialSupply;
  }

  // transfer
  // exception
  // return a boolean
  // transfer event
  function transfer(address _to, uint256 _value) public returns (bool success) {
    // exception if account doesnt have enough
    // require ketyword saying if this is true carry on else fail.
    require(balanceOf[msg.sender] >= _value);

    // transfer the balance from msg.sender to address passed in
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;

    // transfer event
    emit Transfer(msg.sender, _to, _value);

    // return a boolean
    return true;
  }
}
