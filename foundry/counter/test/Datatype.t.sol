// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2, stdError} from "forge-std/Test.sol";

contract DatatypeTest is Test {
    function setUp() public {}

    function test_string_concat() public {
        string memory a = string.concat("hello", " world");
        assertEq(a, "hello world");
    }

    function test_string_format() public {
        string memory a = "hello";
        string memory b = "world";
        // uint c = 101;
        // TODO how encode works for uint
        string memory c = string(abi.encodePacked(a, b));
        assertEq(c, "helloworld");
    }

    function test_int_convert() public {
        // bytes is type of array
        bytes memory b = new bytes(1);
        b[0] = 0x01;
        bytes memory c = bytes.concat(b, b);
        assertEq(bytes.concat(b, b), c);
    }

    function test_array() public {
        // fixed size array
        uint8[4] memory arr = [0, 1, 2, 3];
        for (uint256 i = 0; i < arr.length; i++) {
            assertEq(i, arr[i]);
        }
    }
}
