
# DegenToken Smart Contract

## Overview

The `DegenToken` smart contract is an ERC20 token implementation that allows users to mint, burn, transfer, and redeem tokens for exclusive items. The token is named "Degen" with the symbol "DGN". The contract owner can manage the token supply and set up a store where users can redeem tokens for items related to Virat Kohli memorabilia.


## Features

- **ERC20 Standard**: Implements the ERC20 standard for fungible tokens.
- **Ownable**: The contract uses OpenZeppelin's `Ownable` to restrict certain functions to the contract owner.
- **Minting**: The contract owner can mint new tokens.
- **Burning**: Users can burn their tokens to reduce the supply.
- **Transfer**: Users can transfer tokens to other addresses.
- **Redemption**: Users can redeem tokens for exclusive items listed in the store.

## Prerequisites
MetaMask: Make sure you have MetaMask installed and set up.
Ether: Ensure you have enough Ether in your MetaMask wallet to cover gas fees.
Remix IDE: We'll use Remix IDE for deploying the contract.

## Contract Details

### Structs

- `Item`: Represents an item in the store.
  - `string name_of_brands`: The name of the item.
  - `uint256 cost_of_brands`: The cost of the item in Degen tokens.

### Mappings

- `mapping(uint256 => Item) public items`: Maps an item ID to an `Item` struct.

### Constructor



- Initializes the contract with the token name "Degen" and symbol "DGN".
- Sets the initial owner of the contract.
- Initializes the store with four items related to Virat Kohli.

### Functions

#### `mint`


- Mints new tokens and assigns them to the specified address.
- Only callable by the contract owner.

#### `burn`


- Burns a specified amount of tokens from the caller's balance.
- Requires the caller to have a sufficient balance.

#### `transferToken`


- Transfers tokens from the caller to the specified receiver.
- Requires the caller to have a sufficient balance.

#### `redeem`



- Allows users to redeem tokens for items in the store.
- Requires the item to be valid and the caller to have a sufficient balance.
- Burns the required amount of tokens from the caller's balance.

#### `showStore`



- Returns a string representation of the items available in the store and their costs.

## Deployment

- Go to the "Deploy & Run Transactions" tab in Remix.
- Select "Injected Web3" in the environment dropdown (this will connect to MetaMask).
- Ensure your MetaMask is connected to the Ethereum network you want to deploy on (e.g., Ethereum Mainnet or a testnet like Ropsten).
- Select the DegenToken contract from the contract dropdown.
- Provide the constructor argument (initialOwner address which will be your MetaMask address).
- Click "Deploy" and confirm the transaction in MetaMask.

## Verify Contract on Snowtrace
- After deploying, copy the contract address from Remix.
- Go to Snowtrace and search for your contract address.
- Click on the contract address to view details.
- Click on "Contract" tab and then "Verify and Publish".
- Select "Solidity (Single file)" and enter the contract code.
- Select the compiler version and provide the constructor arguments (in the ABI-encoded format).
- Click "Verify and Publish".



## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.



