# Beer Keg

*About the Contract*
A smart contract that lets you purchase liters of beer.

### Contract Address in the Sepolia-Test-Network
0x0E2FfbfA392938beA44079dAb888E37b0fF4b7D2

PLS buy some beer, I need the SepoliaETH

### How to interact
1.) execute npm install in your terminal to make sure you have the required dependencies installed
2.) create a .env file in the root of this project
**Set up the .env as following:**
INFURA_API_KEY=INSERT YOUR API KEY HERE (no quotations)
MNEMONIC="your mnemonic here in quotes"
3.) execute npx truffle console --network sepolia in your terminal
4.) execute let instance = await BeerKeg_Sem_Dominic.deployed() to get the contract instance
5.) call the functions below and make sure you own a lot of liters of beer

### Functions
The beer keg instance supports the following 3 functions to interact with:

`getKegBalance()`: With this function you can check how many liters of beer are currently still in the beer keg

`purchase(Large/Small)Beer(unit liters)`: With this function you can purchase the specified liters of beers. You can get one small beer for  0.3 ether and a large beer for 0.5 ether! So you pay 0.1 ether per 0.1 liter of beer.

(Tip: the function should look like this if you want to purchase a small beer: `instance.purchaseSmallBeer(<liters of beer to purchase>, {from: '<your-metamaskAccount-public-address>', value: web3.utils.toWei('<liters of beer to purchase * 0.3>','ether')}))`

(Tip: the function should look like this if you want to purchase a large beer: `instance.purchaseLargeBeer(<liters of beer to purchase>, {from: '<your-metamaskAccount-public-address>', value: web3.utils.toWei('<liters of beer to purchase * 0.5>','ether')}))`

Make sure the liters of beer is not as a string but a value and the liters of beer * 0,5 is in a string!

`beerKegBalance(<your-metamaksAccount-public-address>)`: With this function you can check how many liters of beer you currently own

## Developers
**Sem Sodermans & Dominic Kühne**
