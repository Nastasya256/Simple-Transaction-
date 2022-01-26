// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Transaction {
  address public owner;
  mapping (address => uint) public balances;
  event Sent(address from, address to, uint amount);

  constructor() {
    owner = msg.sender;
  }

  function coin(address receiver, uint amount) public {
    require(msg.sender == owner, "Denied");
    require(amount < 1e60, "Too much");
    balances[receiver] += amount;
    balances[receiver] += amount;
    emit Sent(msg.sender, receiver, amount);
  }
}
