pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract FreeFL is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function FreeFL(address _owner)  UpgradeableToken(_owner) {
    name = "FreeFL";
    symbol = "FFL";
    totalSupply = 1000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}