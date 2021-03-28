const DuffToken = artifacts.require("DuffToken");

module.exports = function (deployer) {
  deployer.deploy(DuffToken, 1000000);
};
