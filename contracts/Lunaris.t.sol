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
}
