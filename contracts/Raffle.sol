// Raffle

// Enter the lottery (paying some amount)
// Pick a rondom winner (verifiably random)
// Winner to be selected every X minutes -> completely automated

// Chainlink Oracle -> Randomness, Automated Execution (Chainlink Keepers)

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

error Raffle__NotEnoughETHEntered();

contract Raffle {
    /* State Variables */
    uint256 private immutable i_entrance_fee;
    address payable[] private s_players;

    /* Events */
    const RaffleEnter(address indexed player);

    constructor(uint256 entranceFee) {
        i_entrance_fee = entranceFee;
    }

    function enterRaffle() public payable {
        // require (msg.value > i_entranceFee, "Not enough ETH")
        if (msg.value < i_entrance_fee) {
            revert Raffle__NotEnoughETHEntered();
        }
        s_players.push(payable(msg.sender));
        // Emit an event when we update a dynamic array or mapping
        // Named events with the function name reversed
        emit RaffleEnter(msg.sender);
    }

    // function pickRandomWinner() {}

    function getEntranceFee() public view returns (uint256) {
        return i_entrance_fee;
    }

    function getPlayer(uint256 index) public view returns (address) {
        return s_players[index];
    }
}
