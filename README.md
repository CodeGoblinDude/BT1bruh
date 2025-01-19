# UniversityGroupToken ERC-20 Token
![Alt Text](image.png)

## Description
This repository contains an ERC-20 token implementation for the `<University_name_your_Group_name>` project.

## Features
- Initial supply of 2000 tokens.
- Retrieve and display transaction details.
- Fetch transaction sender and receiver addresses.
- Get human-readable timestamp of the latest transaction.

## Usage
1. Deploy the contract on a testnet using Remix and MetaMask.
2. Interact with the token through the contract functions.

### Deployment
1. Open the [Remix IDE](https://remix.ethereum.org/).
![Alt Text](image.png)

2. Paste the smart contract code into a new file (`BT1AmirToken.sol`).
![Alt Text](image1.png)
3. Compile the contract using Solidity version `0.8.x`.
![Alt Text](image2.png)
4. Deploy.
![Alt Text](image3.png)

## Examples
- Transfer tokens: `transfer(address recipient, uint256 amount)`
- View transaction: `getTransaction(uint256 index)`

## License
[MIT License](./LICENSE)
