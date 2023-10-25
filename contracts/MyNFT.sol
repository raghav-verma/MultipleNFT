// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721, ERC721URIStorage {
    address public owner;

    uint256 public s_tokenCounter=0;

    constructor() ERC721("Doggie", "Dog") {
        owner=msg.sender;        
    }
    function _baseURI() internal pure override returns (string memory) {
        return "https://purple-kind-newt-808.mypinata.cloud/ipfs/QmZ1wYfMaT2P3BLFnKnUEboszdUpyHmZTfSTeMAMgWvJEW/";
    }

    // function mintNFT(
    //     address recipient,
    //     string memory tokenURI
    // ) public returns (uint256) {
     
    //     uint256 newItemId = s_tokenCounter;
    //     _mint(recipient, newItemId);
    //     s_tokenCounter++;
    //     _setTokenURI(newItemId, tokenURI);
    //     return newItemId;
    // }

    function mintNFT(address to, uint tokenId, string memory uri)public returns(uint256){
        require(msg.sender==owner,"you cant do it");
        _mint(to,tokenId);
        _setTokenURI(tokenId,uri);
        s_tokenCounter++;
        return tokenId;

    }
    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

}
