// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
// log usage in test.
// import "forge-std/console.sol";

// import "forge-std/console.sol";

contract CounterTest is Test {
    Counter public counter;
    function setUp() public {
        counter = new Counter();
        console.log("");
    }

    function test_One() public {

    }
}

