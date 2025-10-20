# ERC-20 based token 

This project showcases a Hardhat 3 Beta project using `solidity` for tests and the `ethers` library for Ethereum interactions.


## node installation
To install the lts version of `node & npm`, using `nvm` package manager: 
1. Install nvm: 
    ```shell
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    ```
2. Loads nvm to use it:
    ```shell
    export NVM_DIR="$HOME/.nvm"`
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion
    ``` 
3. Instal node lts (come together with npm): `nvm install node`
4. Set the node lts version as global: `nvm alias default node`
5. Check out the version: `npm -v & node -v`
6. create folder and initialize git: `mkdir profileManager; npm init -y`

## Hardhat Instalation
1. run on the command line: `npx hardhat --init`
2. [Read the docs to migrate from v2 to v3](https://hardhat.org/migrate-from-hardhat2)

## git Configuration
1. Initialize git: `git init`
2. Set branch main as default: 
    1. `git config --global init.defaultBranch main`
    2. `git branch -m main`

## Necessary Libs Instalation (ethers, hardhat, mocha and forge-std)
- Javascript Dependencies
    ```shell
    npm install --save-dev ethers @nomicfoundation/hardhat-toolbox-mocha-ethers
    ``` 
- Hardhat 3 Dependencies:
    ```shell
    npm install --save-dev hardhat github:foundry-rs/forge-std#v1.9.7 
    ``` 
> Note that Forge package is coming directly from foundry repository, according to [Hardhat 3 official documentation](https://hardhat.org/docs/learn-more/writing-solidity-tests)

## Usage

### Running Tests

To run all the tests in the project, execute the following command:

```shell
npx hardhat test
```

You can also selectively run the Solidity or `mocha` tests:

```shell
npx hardhat test solidity
npx hardhat test mocha
```


## Understanding the tests
The Solidity test files are written with the extention according to the model `file.t.sol`, and the hardhat executes every of them which it can find, based on the command you're using to execute the tests.

### Unit Tests
The solidity based tests uses mainly the following functions 
```shell
require(LogicalTest, "expected result")
``` 
or 
```shell 
assertEq(returnedValue, expectedValue, "message")
``` 
which consists on execute the functionalities and check out if the results are correct. To execute the tests, the following CLI must be executed: `npx hardhat test solidity`

### Covarage Tests
The covarage tests, similarly to TS tests covarage, can be made executing the command line `npx hardhat test solidity --coverage`, in parallel with `npx hardhat test --coverage` to TS tests covarage

### Make a deployment to Sepolia

This project includes an example Ignition module to deploy the contract. You can deploy this module to a locally simulated chain or to Sepolia.

To run the deployment to a local chain:

```shell
npx hardhat ignition deploy ignition/modules/Lunaris.ts
```

To run the deployment to Sepolia, you need an account with funds to send the transaction. The provided Hardhat configuration includes a Configuration Variable called `SEPOLIA_PRIVATE_KEY`, which you can use to set the private key of the account you want to use.

You can set the `SEPOLIA_PRIVATE_KEY` variable using the `hardhat-keystore` plugin or by setting it as an environment variable.

To set the `SEPOLIA_PRIVATE_KEY` config variable using `hardhat-keystore`:

```shell
npx hardhat keystore set SEPOLIA_PRIVATE_KEY
```

After setting the variable, you can run the deployment with the Sepolia network:

```shell
npx hardhat ignition deploy --network sepolia ignition/modules/Counter.ts
```


## Main References
[Getting Started guide](https://hardhat.org/docs/getting-started#getting-started-with-hardhat-3).
[Ethers Documentatin](https://docs.ethers.org/v6/)