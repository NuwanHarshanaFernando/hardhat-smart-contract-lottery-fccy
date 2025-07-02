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