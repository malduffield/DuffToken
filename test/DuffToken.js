
var DuffToken = artifacts.require("./DuffToken.sol");

contract('DuffToken', function(accounts) {

  it('sets the total supply upon deployment', function() {
    return DuffToken.deployed().then(function(instance) {
      tokenInstance = instance;
      return tokenInstance.totalSupply();
    }).then(function(totalSupply) {
      assert.equal(totalSupply.toNumber(), 1000000, 'sets the total supply to 1000,000');
      return tokenInstance.balanceOf(accounts[0]);
    }).then(function(adminBalance) {
      assert.equal(adminBalance.toNumber(), 1000000, 'it allocates the initial supply to the admin account')
    })
  })
})
