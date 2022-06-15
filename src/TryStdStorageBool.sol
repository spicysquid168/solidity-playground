// SPDX-License-Identifier: WTF
pragma solidity 0.8.13;

import { Test, stdStorage, StdStorage } from "forge-std/Test.sol";
import { console } from "forge-std/console.sol";

contract TrySetStorageBool is Test {
  using stdStorage for StdStorage;

  struct AccountInfo {
    uint256 balance;
    bool flag;
    uint256 nonce;
  }
  mapping(address => AccountInfo) public accounts;

  function run() external {
    accounts[msg.sender] = AccountInfo({
      balance: 10 ether,
      flag: true,
      nonce: 8
    });

    console.log(stdstore.target(address(this)).sig(0x5e5c06e2).with_key(msg.sender).depth(1).read_bool());
  }
}