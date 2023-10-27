// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Functions {
    address public admin;
    uint256 public number;
    
    constructor() {
        number = 0;
        admin = msg.sender;
    }

/*
memory and calldata (as well as storage) are keywords that define the data area where a variable is stored. 
To answer your question directly, memory should be used when declaring variables
 (both function parameters as well as inside the logic of a function) that you want stored in memory (temporary), 
 and calldata must be used when declaring an external function's dynamic parameters.

The easiest way to think about the difference is that calldata is a non-modifiable, non-persistent area 
where function arguments are stored, and behaves mostly like memory.
*/
    function memoryPara(string memory a, string calldata b) public pure returns(string calldata) {
        // memory can be upated
        a = "hello";
        // we can use b, but not updated it. since it is allocated by caller
        string calldata c = b;
        return c;

    }

    // fib function, tail recursive
    function fib(uint256 x) public pure returns (uint256) {
        if (x == 0) {
            return 0;
        } else if (x == 1) {
            return 1;
        } else {
            return fib(x - 1) + fib(x - 2);
        }
    }

    // tail recursive
    function mostSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        unchecked {
            if (x >= 0x100000000000000000000000000000000) {
                x >>= 128;
                r += 128;
            }
            if (x >= 0x10000000000000000) {
                x >>= 64;
                r += 64;
            }
            if (x >= 0x100000000) {
                x >>= 32;
                r += 32;
            }
            if (x >= 0x10000) {
                x >>= 16;
                r += 16;
            }
            if (x >= 0x100) {
                x >>= 8;
                r += 8;
            }
            if (x >= 0x10) {
                x >>= 4;
                r += 4;
            }
            if (x >= 0x4) {
                x >>= 2;
                r += 2;
            }
            if (x >= 0x2) r += 1;
        }
    }
}

