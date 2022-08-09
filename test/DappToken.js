var DappToken = artifacts.require("./DappToken.sol");

contract('DappToken', function(accounts)
{

    it('initializes contract with the correct values', function()
    {
        return DappToken.deployed().then(function(instance)
        {
            tokenInstance = instance;

            return tokenInstance.name();
        })
        .then(function(name)
        {
            assert.equal(name, 'Rawbin', 'has correct name');
            return tokenInstance.symbol();
        })
        .then(function(symbol)
        {
            assert.equal(symbol, 'RWB', 'has correct symbol');
            return tokenInstance.standard();
        })
        .then(function(standard)
        {
            assert.equal(standard, 'ERC_Rawbinv1.0', 'has correct symbol');
        })
    })

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
            return tokenInstance.balanceOf(accounts[0]); 
        }).then(function(adminBalance)
        {
            assert.equal(adminBalance.toNumber(), 1000000, 'allocates balance to admin account');
        })
    })
})