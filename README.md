

# DegenToken Smart Contract

## Introduction

The `DegenToken` smart contract is an ERC20 token implementation with additional functionalities for minting, burning, transferring tokens, and redeeming items from a store. It leverages the OpenZeppelin library for standard token operations and ownership management.

## Key Points

### 1. Contract Inheritance
- **ERC20**: Implements the standard ERC20 token functionality.
- **Ownable**: Provides ownership control to the contract, allowing only the owner to execute certain functions.

### 2. Constructor
- Initializes the contract with predefined items in the store.
- Takes an `initialOwner` address as a parameter to set the contract owner.



### 3. Struct Definition
- **Item**: Represents an item in the store with a name and cost in tokens.



### 4. Mappings
- **items**: Maps item IDs to `Item` structs.
- **playerItems**: Maps player addresses to an array of strings representing redeemed items.



### 5. Functions

#### Mint
- Allows the owner to mint new tokens to a specified address.


#### Burn
- Allows token holders to burn (destroy) their own tokens.


#### TransferToken
- Allows token holders to transfer tokens to another address.



#### Redeem
- Allows token holders to redeem items from the store by burning the required amount of tokens.



#### ShowStore
- Returns a static string listing the items available in the store and their costs.



#### GetPlayerItems
- Returns the list of items redeemed by a specific player.



## Example Usage

1. **Deploy the contract** with the address of the initial owner.
2. **Mint tokens** to an address (only the owner can do this).
3. **Transfer tokens** between addresses.
4. **Redeem items** from the store by burning tokens.
5. **View available items** in the store.
6. **Check redeemed items** for a specific player.

## Deployment on Fuji Network

### Requirements

1. **Remix IDE**: A web-based IDE for Solidity development.
2. **MetaMask**: A browser extension for managing Ethereum-compatible wallets.
3. **AVAX Test Tokens**: Required for deploying the contract on the Fuji test network.

### Steps

1. **Set Up MetaMask**:
   - Install the MetaMask extension for your browser.
   - Create a new wallet or import an existing one.
   - Switch to the Fuji test network. To add the Fuji test network to MetaMask, use the following settings:
     - Network Name: Avalanche Fuji C-Chain
     - New RPC URL: `https://api.avax-test.network/ext/bc/C/rpc`
     - Chain ID: `43113`
     - Symbol: `AVAX`
     - Explorer URL: `https://cchain.explorer.avax-test.network/`
   
2. **Obtain AVAX Test Tokens**:
   - Visit the [Avalanche Fuji Faucet](https://faucet.avax-test.network/).
   - Enter your wallet address to receive test AVAX tokens.

3. **Deploy Contract Using Remix**:
   - Open [Remix IDE](https://remix.ethereum.org/).
   - Create a new file and paste the `DegenToken` contract code.
   - Compile the contract by selecting the appropriate Solidity version.
   - In the "Deploy & Run Transactions" panel, select "Injected Web3" as the environment to connect Remix to MetaMask.
   - Ensure that MetaMask is connected to the Fuji network and has sufficient AVAX test tokens.
   - Deploy the contract by specifying the initial owner's address.
   - Confirm the transaction in MetaMask.

4. **Verify Contract on Snowtrace**:
   - After deploying the contract, you can verify it on [Snowtrace](https://testnet.snowtrace.io/).
   - Navigate to the contract address on Snowtrace.
   - Click on the "Verify and Publish" button.
   - Select the compiler version and optimization settings used during deployment.
   - Paste the contract code and complete the verification process.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Notes

- The `redeem` function burns the required amount of tokens and adds the redeemed item to the player's list. It also removes the redeemed item from the store.
- The `showStore` function returns a static list of items. To reflect dynamic updates, further logic could be added to generate this string dynamically based on the `items` mapping.

