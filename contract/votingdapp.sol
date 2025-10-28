
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Simple Voting DApp
/// @author You
/// @notice This contract lets users vote for predefined candidates.
/// @dev Basic example for learning Solidity concepts

contract VotingDApp {
    // Structure to store candidate details
    struct Candidate {
        string name;
        uint voteCount;
    }

    // List of all candidates
    Candidate[] public candidates;

    // Mapping to keep track of who has voted
    mapping(address => bool) public hasVoted;

    // Address of the contract owner
    address public owner;

    // Voting status
    bool public votingOpen;

    // Constructor: Initialize the owner and candidates
    constructor(string[] memory _candidateNames) {
        owner = msg.sender;
        for (uint i = 0; i < _candidateNames.length; i++) {
            candidates.push(Candidate({ name: _candidateNames[i], voteCount: 0 }));
        }
        votingOpen = true;
    }

    /// @notice Vote for a candidate by index
    /// @param _candidateIndex Index of the candidate in the list
    function vote(uint _candidateIndex) external {
        require(votingOpen, "Voting is closed");
        require(!hasVoted[msg.sender], "You have already voted");
        require(_candidateIndex < candidates.length, "Invalid candidate index");

        hasVoted[msg.sender] = true;
        candidates[_candidateIndex].voteCount += 1;
    }

    /// @notice End the voting process (only owner)
    function endVoting() external {
        require(msg.sender == owner, "Only owner can end voting");
        votingOpen = false;
    }

    /// @notice Get total candidates
    function getCandidatesCount() external view returns (uint) {
        return candidates.length;
    }

    /// @notice Get details of a candidate
    function getCandidate(uint _index) external view returns (string memory, uint) {
        require(_index < candidates.length, "Invalid candidate index");
        Candidate memory c = candidates[_index];
        return (c.name, c.voteCount);
    }
}
