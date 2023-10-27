// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2, stdError} from "forge-std/Test.sol";
import {Caller, Receiver} from "../src/CallUsage.sol";

contract CallUsageTest is Test {
    Caller public caller;
    Receiver public receiver;
    A public a;
    Proxy public p;
    // event should be redefined in test contract

    event LogNewValue(uint256 newValue);

    function setUp() public {
        caller = new Caller();
        receiver = new Receiver();
        a = new A();
        p = new Proxy();
    }

    function test_call_foo() public {
        caller.testCallFoo(payable(receiver));
        (bool success, bytes memory data) = (payable(receiver)).call("");
        // emit log(success);
        if (success) {
            emit log_named_bytes("success", data);
        }
    }

    function test_call() public {
        address b = (address)(a);
        (bool success, bytes memory data) = b.call(abi.encodeWithSignature("printCaller()"));

        if (success) {
            emit log_named_bytes("success", data);
        }
    }

    function test_deledate_call() public {
        p.delegateCall(address(a));
    }
}

contract A is Test {
    function setUp() public {}

    fallback() external payable {}

    receive() external payable {}

    function printCaller() public payable {
        emit log_named_address("sender is", msg.sender);
        emit log_named_uint("eth is", msg.value);
    }
}

contract Proxy is Test {
    // delegate call using the same context as before, like sender and amount
    function delegateCall(address a) public {
        (bool success, bytes memory data) = a.delegatecall(abi.encodeWithSignature("printCaller()"));

        if (success) {
            emit log_named_bytes("success", data);
        }
    }
}
