// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
// import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";

contract LawContract is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("LawContract", "LC") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://rose-brillian-boa-505.mypinata.cloud/ipfs/bafkreif5abyuhji4inbl74qfkqzkmzxfran7h3e5zsreycqi56ehixbkai"
        );
        tokenId++;
    }
}