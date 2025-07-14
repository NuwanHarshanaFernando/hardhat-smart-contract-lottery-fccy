// Raffle

// Enter the lottery (paying some amount)
// Pick a rondom winner (verifiably random)
// Winner to be selected every X minutes -> completely automated

// Chainlink Oracle -> Randomness, Automated Execution (Chainlink Keepers)

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Raffle {
    /* Errors */
    error Raffle__NotEnoughETHEntered();
    address payable[] private s_players;

    /* State Variables */
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        if (msg.value < i_entranceFee) {
            revert Raffle__NotEnoughETHEntered();
        }
        s_players.push(payable(msg.sender));
    }

    /* Getter Functions */
    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }

    function getPalyer(uint256 index) public view returns (address) {
        return s_players[index];
    }
}
