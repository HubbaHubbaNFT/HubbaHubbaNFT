pragma solidity 0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract HubbaHubbaBadge is ERC721 {
    uint256 public tokenCounter;

    constructor() public ERC721("HubbaHubba", "HUB") {
        tokenCounter = 333;
    }

    // return new token id
    function createHubbaHubba(string memory tokenURI) public returns (uint256) {
        uint256 newTokenID = tokenCounter;
        _safeMint(msg.sender, newTokenID);
        _setTokenURI(newTokenID, tokenURI);
        tokenCounter = tokenCounter + 1;
        return (newTokenID);
    }
}
