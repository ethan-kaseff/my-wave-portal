// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol"; 

contract WavePortal {
    uint256 totalWaves;
    address[] wavers;

    constructor() {
        console.log("This is exciting, it's my first smart contract!");
    }

    function wave() public {
        totalWaves += 1;
        wavers.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getWavers() public view returns (uint256) {
        for (uint i=0; i<wavers.length; i++) {
            console.log("Waver: ",  i, "....... ", wavers[i]);
        }
        return 45;
    }
}