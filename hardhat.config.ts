// // import { HardhatUserConfig } from "hardhat/config";
// // import "@nomicfoundation/hardhat-toolbox";

// // const config: HardhatUserConfig = {
// //   solidity: "0.8.19",
// // };

// // export default config;



// // };

// import { HardhatUserConfig } from "hardhat/types";


// require('dotenv').config();
// require("@nomicfoundation/hardhat-ethers");
// import "@nomicfoundation/hardhat-verify";

// const PRIVATE_KEY = process.env.PRIVATE_KEY;
// const API_URL = process.env.API_URL;


// // Throw an error if PRIVATE_KEY is not defined
// if (!PRIVATE_KEY) {
//   throw new Error("Please set your PRIVATE_KEY in a .env file");
// }

// const config: HardhatUserConfig = {
//   solidity: "0.8.20",
//   defaultNetwork: "sepolia",
//   networks: {
//     hardhat: {},
//     sepolia: {
//       url: API_URL,
//       accounts: [PRIVATE_KEY],  // PRIVATE_KEY is a string, as verified above
//     },
//   },
//   etherscan: {
//     apiKey: "CD2TBGENJ1SAJRMRHZ7Q3692VD5IR1D966",
    
//   }
// };

// export default config;


import { HardhatUserConfig } from "hardhat/types";


require('dotenv').config();
require("@nomicfoundation/hardhat-ethers");
import "@nomicfoundation/hardhat-verify";

module.exports = {
  defaultNetwork: "polygon_mumbai",
  networks: {
    hardhat: {
    },
    polygon_mumbai: {
      url: "https://rpc-mumbai.maticvigil.com",
      accounts:  [process.env.PRIVATE_KEY],
    }
  },
  etherscan: {
    apiKey: "WNEEK6UBVBSEXBR4T31UCGU5EEMRH1PM68",
  },
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
}
