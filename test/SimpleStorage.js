
const { expect } = require("chai");

const hre = require("hardhat");

describe("SimpleStorage", function () {
    let simpleStorageContract;
    before(async () => {
        // ⽣成合约实例并且复⽤ 
        simpleStorageContract = await hre.ethers.deployContract("SimpleStorage", []);
    }); 
    it("should return 0", async function () {
        // assert that the value is correct 
        expect(await simpleStorageContract.get()).to.equal(0);
    }); 

    it("should return 123", async () => {
        await simpleStorageContract.set(123);
        expect(await simpleStorageContract.get()).to.equal(123);
    }); 

}); 