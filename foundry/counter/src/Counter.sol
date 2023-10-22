// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    event LogNewValue(uint256 newValue);

    function setNumber(uint256 newNumber) public {
        number = newNumber;
        emit LogNewValue(number);
    }

    function increment() public {
        number++;
        emit LogNewValue(number);
    }

    function decrement() public {
        number--;
        emit LogNewValue(number);
    }
}
