
import {ethers} from "hardhat";

async function main() {
    const MultiNFT = await ethers.getContractFactory("MultipleNFT");
  
    // Start deployment, returning a promise that resolves to a contract object
    const multiNFT = await MultiNFT.deploy();
    console.log("Contract deployed to address:", multiNFT.target);
  }
  
main()
  .then(() => {
    console.log('Deployment succeeded');
    process.exit(0);
  })
  .catch((error) => {
    console.error('Deployment failed:', error);
    process.exit(1);
  });

//   0xc9c6353cC2f6b8e48c2b75E3d98a99b4f4C86207