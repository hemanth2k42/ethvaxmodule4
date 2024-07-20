
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

To deploy the `DegenToken` contract, use the following constructor parameters:

- `initialOwner`: The address that will be assigned as the contract owner.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.



