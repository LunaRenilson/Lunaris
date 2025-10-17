// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Lunaris {
    mapping(address => uint256) private _balances;

    constructor() {
        _balances[msg.sender] = totalSupply() / 2;
    }

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

    function balanceOf(address _owner) public view returns (uint256) {
        return _balances[_owner];
    }

}
