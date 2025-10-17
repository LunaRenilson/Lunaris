// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Lunaris {

  function name() public pure returns (string memory) {
    return "Lunaris";
  }

  function symbol() public pure returns (string memory) {
    return "LNR";
  }

  function decimals() public pure returns (uint8) {
    return 18;
  }

  function totalSupply() public pure returns (uint256) {
    return 1000000 * 10 ** uint256(decimals());
  }
}