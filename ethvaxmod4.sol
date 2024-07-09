// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable 
{
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) 
    {}

    function mint_tokens(address to, uint256 amount) public onlyOwner 
    {
        _mint(to, amount);
    }
    event TokensRedeemed(address indexed account, uint256 amount);
    
    function redeem_tokens(uint256 amount) public 
    {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to redeem");
        _burn(msg.sender, amount);
        emit TokensRedeemed(msg.sender, amount);
    }

    function burn_tokens(uint256 amount) public 
    {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to burn");

        _burn(msg.sender, amount);
    }

    function transfer_Tokens(address to, uint256 amount) public 
    {
        require(to != address(0), "Cannot transfer to the zero address");
        require(amount > 0, "Amount must be greater than zero");

        transfer(to, amount);
    }

    function getTokenBalance(address account) public view returns (uint256) 
    {
        return balanceOf(account);
    }
}
