// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2, stdError} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;
    event NewValue(uint);

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function test_Decrement() public {
        vm.expectRevert(stdError.arithmeticError);
        counter.decrement();
        // value not changed
        emit log_named_uint("after decrement value is", counter.number());
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function test_emitted_log() public {
        vm.expectEmit(true, true, true, true);
        // vm.expectEmit();
        emit Counter.LogNewValue(1);
        counter.increment();

    }
}
