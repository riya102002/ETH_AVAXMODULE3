## BookClub Token

The BookClubToken is an ERC20 token contract that rewards users for their reading activities within a book club.






## Features

1. Token Minting: The contract administrator can mint new tokens and assign them to specific addresses.

2. Token Burning: Users can burn their own tokens.

3. Reading Logging: Users can log their reading activities, including the book title and the number of pages read. This will earn them tokens as a reward.

4. Token Redemption: Users can redeem their earned tokens for various privileges or rewards.

5. User Activity Tracking: The contract tracks each user's reading activities, which can be retrieved using the getUserActivities function.


## Usage

1. Deployment: Deploy the BookClubToken contract to the Ethereum network.

2. Token Minting: The contract administrator can call the mint function to create new tokens and assign them to specific addresses.

3. Reading Logging: Users can call the logReading function to log their reading activities and earn tokens as a reward.

4. Token Redemption: Users can call the redemption_of_Tokens function to redeem their earned tokens for various privileges or rewards.

5. User Activity Tracking: Other contracts or applications can call the getUserActivities function to retrieve a user's reading activities.
## Requirements

To use the BookClubToken contract, you'll need the following:

1. Solidity Compiler: You'll need a compatible Solidity compiler, version 0.8.0 or higher.

2. Ethereum Development Environment: You'll need an Ethereum development environment, such as Truffle, Hardhat, or Remix, to deploy and interact with the contract.

3. Ethereum Account: You'll need a funded Ethereum account to deploy the contract and interact with it.

4. OpenZeppelin Contracts: The contract imports the ERC20 contract from the OpenZeppelin library, so you'll need to have access to the OpenZeppelin contracts.
## Deployment

To deploy the BookClubToken contract, you will need:

1. A compatible Solidity compiler (version 0.8.0 or higher).

2. An Ethereum development environment (e.g., Truffle, Hardhat, or Remix).

3. A funded Ethereum account to deploy the contract from.

Once you have these, you can compile and deploy the contract to the Ethereum network of your choice.
## Author

 @RiyaKesharwani [https://github.com/riya102002]



## License

[MIT](https://choosealicense.com/licenses/mit/)

This project BookClubToken is licensed under the MIT license.
