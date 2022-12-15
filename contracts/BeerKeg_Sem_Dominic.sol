// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BeerKeg_Sem_Dominic {
    // Define some state variables
    address public owner;
    mapping (address => uint) public beerKegBalance;

    constructor() {
        owner = msg.sender;
        //a keg is 50 Liters
        beerKegBalance[address(this)] = 50;
    }

    // This function is called whenever someone wants to read how much beer there still is in the keg
    function getKegBalance() public view returns (uint) {
        return beerKegBalance[address(this)];
    }

    // This function is called whenever someone wants to set a new message
    function changeKeg(uint liters) public {
        require(msg.sender == owner, "you are not allowed to fill up the keg :/");
        beerKegBalance[address(this)] += liters;
    }

    function purchaseSmallBeer(uint liters) public payable {
        require(msg.value >= liters * 0.3 ether, "the price is 0.3 ether for a small beer");
        require(beerKegBalance[address(this)] >= liters, "The keg is almost empty and hasn't got enough beer left for a full small beer");
        beerKegBalance[address(this)] -= liters;
        beerKegBalance[msg.sender] += liters;
    }

    function purchaseLargeBeer(uint liters) public payable {
        require(msg.value >= liters * 0.5 ether, "the price is 0.5 ether for a large beer");
        require(beerKegBalance[address(this)] >= liters, "The keg is almost empty and hasn't got enough beer left for a full large beer");
        beerKegBalance[address(this)] -= liters;
        beerKegBalance[msg.sender] += liters;
    }
}
