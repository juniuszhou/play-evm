// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Receiver {
    event Received(address caller, uint256 amount, string message);

    /*
        Which function is called, fallback() or receive()?

            send Ether
                |
            msg.data is empty?
                / \
                yes  no
                /     \
    receive() exists?  fallback()
            /   \
            yes   no
            /      \
        receive()   fallback()
        */

    fallback() external payable {
        emit Received(msg.sender, msg.value, "Fallback was called");
    }

    function foo(string memory _message, uint256 _x) public payable returns (uint256) {
        emit Received(msg.sender, msg.value, _message);

        return _x + 1;
    }

    // receiver must be empty
    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    // Let's imagine that contract Caller does not have the source code for the
    // contract Receiver, but we do know the address of contract Receiver and the function to call.
    function testCallFoo(address payable _addr) public payable {
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) =
            _addr.call{value: msg.value, gas: 5000}(abi.encodeWithSignature("foo(string,uint256)", "call foo", 123));

        emit Response(success, data);
    }

    // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(abi.encodeWithSignature("doesNotExist()"));

        emit Response(success, data);
    }
}
