
const { expect } = require("chai");

const hre = require("hardhat");

describe("Counter", function () {
    let counterContract;
    before(async () => {
        // ⽣成合约实例并且复⽤ 
        counterContract = await hre.ethers.deployContract("Counter", []);
    }); 
    it("should return 0", async function () {
        // assert that the value is correct 
        expect(await counterContract.get()).to.equal(0);
    }); 

    it("should return 1", async () => {
        // Calling the inc() function 
        await counterContract.inc();
        // Checking if the status is Shipped 
        expect(await counterContract.get()).to.equal(1);
    }); 

    it("should return 0", async () => {
        // Calling the inc() function 
        await counterContract.dec();
        expect(await counterContract.get()).to.equal(0);
    }); 
}); 