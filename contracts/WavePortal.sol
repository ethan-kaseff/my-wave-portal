// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol"; 

contract WavePortal {
    uint256 totalWaves;
    // uint256[] wavers;

    constructor() {
        console.log("This is exciting, it's my first smart contract!");
    }

    function wave() public {
        totalWaves += 1;
        // wavers.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    // function getWavers() public view {
    //     console.log("Look at all these wavers!", wavers);
    // }
}