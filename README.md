# Hardhat Foundry Starter

This is a solidity starter template which lets you use both, [Hardhat](https://hardhat.org) and [Foundry](https://github.com/gakonst/foundry).

## Why use both the tools?

Foundry has some awesome testing capabilities, thanks to [cheatcodes](https://onbjerg.github.io/foundry-book/forge/cheatcodes.html), which can manipulate the state of the blockchain. However, I was missing out on some features offered by Hardhat. These include:

- Compatibility by [remix ide](https://remix.ethereum.org): I always use remix for deployment and manually testing contracts. However, I wasn't able to use foundry-style imports in remix (refer [#2096](https://github.com/ethereum/remix-project/issues/2096)). So, I decided to enable imports from node_modules, which are compatible with remix; and add remappings in foundry's config.
- Ability to run a local node.
- Writing tests in JS/TS: While writing tests in solidity is a better experience, sometimes we might want to replicate some JS behavior, which is present in dapps.

Hence, this template.

## Foundry Instructions

Write forge tests in [test/forge](./test/forge).

```shell
forge build
forge test
```

## Hardhat Instructions

Write hardhat tests in [test/hardhat](./test/hardhat/).

```shell
npm install
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
REPORT_GAS=true npx hardhat test
npx hardhat coverage
npx hardhat run scripts/deploy.ts
TS_NODE_FILES=true npx ts-node scripts/deploy.ts
npx eslint '**/*.{js,ts}'
npx eslint '**/*.{js,ts}' --fix
npx prettier '**/*.{json,sol,md}' --check
npx prettier '**/*.{json,sol,md}' --write
npx solhint 'contracts/**/*.sol'
npx solhint 'contracts/**/*.sol' --fix
```

### Etherscan verification

To try out Etherscan verification, you first need to deploy a contract to an Ethereum network that's supported by Etherscan, such as Ropsten.

In this project, copy the .env.example file to a file named .env, and then edit it to fill in the details. Enter your Etherscan API key, your Ropsten node URL (eg from Alchemy), and the private key of the account which will send the deployment transaction. With a valid .env file in place, first deploy your contract:

```shell
hardhat run --network ropsten scripts/sample-script.ts
```

Then, copy the deployment address and paste it in to replace `DEPLOYED_CONTRACT_ADDRESS` in this command:

```shell
npx hardhat verify --network ropsten DEPLOYED_CONTRACT_ADDRESS "Hello, Hardhat!"
```

### Performance optimizations

For faster runs of your tests and scripts, consider skipping ts-node's type checking by setting the environment variable `TS_NODE_TRANSPILE_ONLY` to `1` in hardhat's environment. For more details see [the documentation](https://hardhat.org/guides/typescript.html#performance-optimizations).

## Credits

- https://github.com/EricForgy/foundry-hardhat-sample
- Hardhat Starter Template
- [ds-test](https://github.com/dapphub/ds-test)
- [forge-std](https://github.com/brockelmore/forge-std)
- [solmate](https://github.com/Rari-Capital/solmate)
