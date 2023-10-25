
// pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

// contract MultipleNFT is ERC721, ERC721URIStorage {
//     uint256 private _nextTokenId;
//     using Strings for uint256;

//     address public owner;

//     constructor() ERC721("MultipleNFTs", "MFT") {
//         owner = msg.sender;
//     }

//     function _baseURI() internal pure override returns (string memory) {
//         return
//             "https://purple-kind-newt-808.mypinata.cloud/ipfs/QmVZXVHpZs6L3hLvY3jTsqXa1LodW5PPsgbwp4Z8jyxXi9/";
//     }

//     function safeMint(address to) public {
//         uint256 tokenId = ++_nextTokenId;
//         _safeMint(to, tokenId);
//     }

//     // The following functions are overrides required by Solidity.

//     function tokenURI(
//         uint256 tokenId
//     ) public view override(ERC721, ERC721URIStorage) returns (string memory) {
//         string memory base = _baseURI();
//         return string.concat(base, tokenId.toString(), ".json");
//     }

//     function supportsInterface(
//         bytes4 interfaceId
//     ) public view override(ERC721, ERC721URIStorage) returns (bool) {
//         return super.supportsInterface(interfaceId);
//     }
// }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MultipleNFT is ERC721, ERC721URIStorage {
    uint256 private _nextTokenId=0;
    using Strings for uint256;

    address public owner;

    constructor() ERC721("testingMatic", "TST2") {
        owner = msg.sender;
    }

    function _baseURI() internal pure override returns (string memory) {
        return
            "https://purple-kind-newt-808.mypinata.cloud/ipfs/QmZ1wYfMaT2P3BLFnKnUEboszdUpyHmZTfSTeMAMgWvJEW/";
    }
    function safeMint(address to) public {
        uint256 tokenId = ++_nextTokenId;
        _safeMint(to, tokenId);
    }

    // The following functions are overrides required by Solidity.

    function tokenURI(
        uint256 tokenId
    ) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        string memory base = _baseURI();
        // return string.concat(base, tokenId.toString(), ".json");
        return string.concat(base, Strings.toString(tokenId),".json");
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}

