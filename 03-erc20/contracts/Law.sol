// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Law is ERC20 {
    constructor(uint256 initialSupply) ERC20("Law", "L") {
        _mint(msg.sender, initialSupply);
    }

    function generateTokens(address destination, uint256 amount) public {
        _mint(destination, amount);
    }
}