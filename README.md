
# 🗳️ Voting DApp on Celo

A simple **decentralized voting application** built with **Solidity** and deployed on the **Celo Blockchain (Sepolia Testnet)**.  
This project demonstrates how blockchain can ensure **fair, transparent, and tamper-proof voting**.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/da4e9bf9-19a0-4222-abda-85a72adae14a" />

---

## 📜 Project Description

Voting DApp allows users to **vote for their favorite candidates** in a transparent way.  
Each voter can vote **only once**, and every vote is **recorded on-chain**, making it **immutable and verifiable**.

The project is designed for **beginners** learning Solidity and Celo smart contract development.

---

## ⚙️ What It Does

1. The contract owner deploys the smart contract with a list of candidates.  
2. Users connect their wallet and vote for their preferred candidate.  
3. Each address can vote only once.  
4. The owner can close the voting when it’s over.  
5. Results can be viewed directly from the blockchain.

---

## 🌟 Features

- 🧠 **Simple & Beginner-Friendly:** Easy to understand Solidity structure.  
- 🔒 **One-Vote Rule:** Each wallet address can only vote once.  
- ⛓️ **On-Chain Transparency:** All votes are publicly verifiable.  
- 🪙 **Deployed on Celo Sepolia:** Uses Celo’s testnet for a smooth developer experience.  
- 👨‍💼 **Owner Privileges:** Only the contract deployer can end the voting phase.

---

## 📄 Smart Contract

- **Language:** Solidity `^0.8.20`  
- **Framework:** Remix / Hardhat compatible  
- **Network:** Celo Sepolia Testnet  
- **Deployed Transaction:**  
  👉 [View on Blockscout](https://celo-sepolia.blockscout.com/tx/0xbe8b13f067e0a65ad72e9dd860c87ee635243725f4e87330087f9845499b6a96)

---

## 💻 Smart Contract Code

```solidity
//paste your code
````

---

## 🚀 How to Run Locally

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/XXX.git
   cd XXX
   ```

2. **Open Remix IDE**

   * Visit [Remix IDE](https://remix.ethereum.org)
   * Paste your smart contract code inside a new file (`VotingDApp.sol`)

3. **Compile & Deploy**

   * Select **Solidity Compiler** → version `0.8.20`
   * Deploy using **Injected Web3** to connect your **Celo wallet**

4. **Interact with the Contract**

   * Call `vote()` with the candidate index.
   * Use `getCandidate()` to view results.

---

## 🧩 Future Enhancements

* 🖥️ Build a React front-end with **Celo Composer** or **Ethers.js**
* 🧾 Add voter registration and candidate management
* 📊 Display live voting stats on UI
* 🔐 Integrate identity verification (optional)

---

## 🙌 Acknowledgments

* [Celo Blockchain](https://celo.org/) for providing eco-friendly infrastructure
* [Remix IDE](https://remix.ethereum.org/) for easy smart contract testing
* [Blockscout](https://blockscout.com/) for transparent transaction viewing

---

> 💡 **Pro Tip:** Start small — experiment, break things, and learn how decentralized apps work under the hood.

---

### 🧠 Made with ❤️ by [Your Name / XXX]

```

---
