
// import {ethers} from "hardhat";

async function main() {
    const MyNFT = await ethers.getContractFactory("MyNFT");
  
    // Start deployment, returning a promise that resolves to a contract object
    const myNFT = await MyNFT.deploy();
    console.log("Contract deployed to address:", myNFT.target);
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

//   0x6a0a6c81203810400Bbf7c4aAf2EdeC8B1b51a76 nft-metadata.json