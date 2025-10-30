# Simple Lottery Smart Contract

A beginner-friendly Ethereum lottery dApp smart contract built with Solidity.
<img width="1919" height="978" alt="image" src="https://github.com/user-attachments/assets/7234a7a9-6ff3-4ed1-ad97-61c2f5231dc3" />

## Overview

This is a simple lottery smart contract where users can enter by sending ETH, and the contract owner can randomly select a winner who receives all the accumulated funds.

## Features

- 🎫 Fixed entry fee of 0.01 ETH
- 🎲 Random winner selection
- 💰 Automatic payout to winner
- 🔄 Auto-reset after each round
- 👥 View all participants
- 📊 Check contract balance

## Contract Functions

### Public Functions

#### `enter()`
- **Description**: Enter the lottery
- **Payable**: Yes (must send exactly 0.01 ETH)
- **Access**: Anyone
- **Example**: Send 0.01 ETH with function call

#### `getPlayers()`
- **Description**: Get list of all participants
- **Returns**: Array of player addresses
- **Access**: Anyone (view only)

#### `getPlayerCount()`
- **Description**: Get total number of players
- **Returns**: Number of players (uint256)
- **Access**: Anyone (view only)

#### `getBalance()`
- **Description**: Get total ETH in the contract
- **Returns**: Balance in wei (uint256)
- **Access**: Anyone (view only)

### Owner-Only Functions

#### `pickWinner()`
- **Description**: Randomly select a winner and transfer all funds
- **Access**: Contract owner only
- **Requirements**: At least 1 player must have entered

## How to Deploy

### Using Remix IDE

1. Go to [Remix IDE](https://remix.ethereum.org/)
2. Create a new file `SimpleLottery.sol`
3. Copy and paste the contract code
4. Select Solidity Compiler (0.8.0 or higher)
5. Click "Compile SimpleLottery.sol"
6. Go to "Deploy & Run Transactions"
7. Select your environment (Injected Provider - MetaMask for testnet/mainnet)
8. Click "Deploy"

### Using Hardhat

```bash
npm install --save-dev hardhat
npx hardhat init
# Copy contract to contracts/SimpleLottery.sol
npx hardhat compile
npx hardhat run scripts/deploy.js --network <network-name>
```

## How to Use

### For Players

1. Connect your wallet to the dApp
2. Call the `enter()` function with exactly 0.01 ETH
3. Wait for the owner to pick a winner
4. If you win, ETH is automatically sent to your wallet

### For Contract Owner

1. Deploy the contract (you become the owner)
2. Wait for players to enter
3. Call `pickWinner()` when ready to end the round
4. Winner is selected and paid automatically
5. Lottery resets for next round

## Example Usage

```javascript
// Enter the lottery (send 0.01 ETH)
await lotteryContract.enter({ value: ethers.utils.parseEther("0.01") });

// Check number of players
const count = await lotteryContract.getPlayerCount();
console.log(`Players: ${count}`);

// Check prize pool
const balance = await lotteryContract.getBalance();
console.log(`Prize pool: ${ethers.utils.formatEther(balance)} ETH`);

// Owner picks winner
await lotteryContract.pickWinner();
```

## State Variables

- `owner`: Address of contract deployer
- `players`: Array of participant addresses
- `entryFee`: Cost to enter (0.01 ETH)

## Security Warnings

⚠️ **IMPORTANT**: This contract is for educational purposes only!

### Known Issues

1. **Insecure Randomness**: The random number generation uses `block.difficulty`, `block.timestamp`, and `players` array, which can be predicted or manipulated by miners. 

2. **For Production**: Use [Chainlink VRF](https://docs.chain.link/vrf/v2/introduction) for secure, verifiable randomness.

3. **No Reentrancy Protection**: Consider adding ReentrancyGuard for production.

4. **No Pausability**: No emergency stop mechanism.

## Testing Networks

Test this contract on testnets first:
- Sepolia Testnet
- Goerli Testnet (being deprecated)
- Mumbai (Polygon testnet)

Get free testnet ETH from faucets:
- [Sepolia Faucet](https://sepoliafaucet.com/)
- [Alchemy Faucet](https://sepoliafaucet.com/)

## License

MIT License - Free to use for learning and development

## Improvements for Production

- ✅ Use Chainlink VRF for secure randomness
- ✅ Add ReentrancyGuard
- ✅ Add time-based lottery rounds
- ✅ Add pausable functionality
- ✅ Add minimum players requirement
- ✅ Emit events for all state changes
- ✅ Add withdrawal pattern instead of transfer
- ✅ Add comprehensive testing

## Resources

- [Solidity Documentation](https://docs.soliditylang.org/)
- [Ethereum Development Documentation](https://ethereum.org/en/developers/docs/)
- [Chainlink VRF](https://docs.chain.link/vrf/v2/introduction)
- [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/)

## Support

This is a learning project. For questions:
- Read Solidity docs
- Join Ethereum developer communities
- Practice on testnets first

---

**Remember**: Never use this contract with real funds on mainnet without proper security audits and improvements!
