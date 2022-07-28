var DappToken = artifacts.require("./DappToken.sol");

contract('DappToken', function(accounts)
{
    it('sets total supply', function()
    {
        return DappToken.deployed().then(function(instance) //since asynchronous
        {
            tokenInstance = instance;

            return tokenInstance.totalSupply(); //return promise
        })
        .then(function(totalSupply) //since asynchronous
        {
            assert.equal(totalSupply.toNumber(), 1000000, 'sets total supply to 1000000');
        })
    })
})