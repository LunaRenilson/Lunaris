// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Lunaris} from "./Lunaris.sol";
import {Test} from "forge-std/Test.sol";

// Solidity tests are compatible with foundry, so they
// use the same syntax and offer the same functionality.

contract Lunaristest is Test {
  Lunaris lunaris;

  function setUp() public {
    lunaris = new Lunaris();
  }

  function testName() public view {
    assertEq(lunaris.name(), "Lunaris");
  }

  // Intentionally failing test to demonstrate test failure reporting
  function testBalanceOf() public view {
    uint256 totalSupply = lunaris.totalSupply();
    assertEq(lunaris.balanceOf(address(this)), totalSupply, "Deployer should have the half of the total supply");
  }
}
