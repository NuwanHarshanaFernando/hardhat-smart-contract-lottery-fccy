To start run this command
```
yarn add --dev hardhat
```

Then create an empty hardhat.config.js

```
yarn hardhat
```
You can see empty hardhat.config file

Then install dependencies using the command in the repo...

```
yarn add --dev @nomiclabs/hardhat-ethers@npm:hardhat-deploy-ethers ethers @nomiclabs/hardhat-etherscan @nomiclabs/hardhat-waffle chai ethereum-waffle hardhat hardhat-contract-sizer hardhat-deploy hardhat-gas-reporter prettier prettier-plugin-solidity solhint solidity-coverage dotenv
```

Raffle

Enter the lottery (paying some amount)
Pick a rondom winner (verifiably random)
Winner to be selected every X minutes -> completely automated

Chainlink Oracle -> Randomness, Automated Execution (Chainlink Keepers)

///////////////////////////////////////////////////////

Download @chainlink/contracts

```
yarn add --dev @chainlink/contracts
```

Add hardhat shorthands

```
yarn global add hardhat-shorthand
```

Now 'yarn hardhat compile' == hh compile

## Deploy

Create a new folder called 'deploy'

Create 01-deploy-raffle.js file inside deploy folder.

Add namedAccounts in hardhat.config.js

  namedAccounts: {
    deployer: {
      default: 0,
    },
    player: {
      default: 1,
    }
  }


Create helper-hardhat-config.js file

Create a new file called 00-deploy-mocks.js inside deploy folder

Create a new folder called "test" in contracts folder

Creata a new file called VRFCoordinatorV2Mock.sol inside it.

Create verify.js file inside utils folder for verification.



