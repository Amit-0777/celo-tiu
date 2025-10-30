// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleLottery {
    address public owner;
    address[] public players;
    uint256 public entryFee;
    
    constructor() {
        owner = msg.sender;
        entryFee = 0.01 ether; // Set entry fee to 0.01 ETH
    }
    
    // Enter the lottery by sending ETH
    function enter() public payable {
        require(msg.value == entryFee, "Must send exactly 0.01 ETH to enter");
        players.push(msg.sender);
    }
    
    // Get random number (NOTE: This is NOT secure for production!)
    function random() private view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }
    
    // Pick a winner (only owner can call)
    function pickWinner() public onlyOwner {
        require(players.length > 0, "No players in the lottery");
        
        uint256 index = random() % players.length;
        address winner = players[index];
        
        // Transfer entire balance to winner
        payable(winner).transfer(address(this).balance);
        
        // Reset the lottery
        players = new address[](0);
    }
    
    // Get all players
    function getPlayers() public view returns (address[] memory) {
        return players;
    }
    
    // Get number of players
    function getPlayerCount() public view returns (uint256) {
        return players.length;
    }
    
    // Get contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
    // Modifier to restrict access to owner only
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this");
        _;
    }
}
