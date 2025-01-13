# Remix-EthereumIDE Solidity Learning Repository

This repository contains various files and contracts I am working on while learning Solidity using the Remix-EthereumIDE.

## Project Structure

- `.deps` - Directory containing dependency files used in the project.
- `.states` - Stores state information for the Remix environment.
- `contracts` - Contains the Solidity smart contracts of varying complexity that I'm developing.
- `scripts` - Includes TypeScript files for deploying contracts using `web3.js` and `ethers.js`.
  - `deploy_with_ethers.ts` - Script to deploy a contract using `ethers.js`.
  - `deploy_with_web3.ts` - Script to deploy a contract using `web3.js`.
- `tests` - Contains test files for contract validation.
  - Mocha-Chai unit tests for the `Storage` contract.
  - JS tests for the `Storage` contract.
- `.prettierrc.json` - Configuration file for Prettier to format Solidity code.
- `README.txt` - This README file explaining the project structure.

## How to Use

### Scripts

The `scripts` folder contains TypeScript files used for deploying the `Storage` contract. To deploy any other contract, simply update the contract name and constructor arguments in `deploy_with_ethers.ts` or `deploy_with_web3.ts`.

To run a script:
1. Ensure that the Solidity file is compiled.
2. Right-click on the desired script in the Remix file explorer.
3. Click `Run`.
4. Output will be displayed in the Remix terminal.

### Testing

The `tests` folder contains test scripts for Solidity contracts. To run the tests:
1. Ensure the relevant Solidity contract is compiled.
2. Run the test files using the Remix test runner or use Mocha-Chai framework for unit testing.

### Dependencies

Remix supports the following modules for deployment and testing:
- `ethers`, `web3`, `swarmgw`, `chai`, `multihashes`, `remix`, and `hardhat` (for Hardhat plugin).
  
Unsupported modules will throw errors indicating the issue.

## License

This project is licensed under the MIT License.
