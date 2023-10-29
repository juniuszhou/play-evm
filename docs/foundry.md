# foundry
Forge: Ethereum testing framework (like Truffle, Hardhat and DappTools).
Cast: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
Anvil: Local Ethereum node, akin to Ganache, Hardhat Network.
Chisel: Fast, utilitarian, and verbose solidity REPL.

## install foundryup

curl -L https://foundry.paradigm.xyz | bash

## install other tools

foundryup -r

## init project
forge init

## install module without submodule
forge install transmissions11/solmate  --no-git 

forge install OpenZeppelin/openzeppelin-contracts --no-git

## test with filter regex
forge test --match-test .*Increment.* // Increment in test name
forge test --match-test test // start with test

forge test --match-path test/Counter.t.sol


## deploy a new contract
forge c Counter --private-key $PRIV_KEY --rpc-url $RPC_URL

forge c Functions --private-key $PRIV_KEY --rpc-url $RPC_URL


## cast call example
## 0xA8B2B82247E3f2b49EE8858b088405e35755c096 counter deployed in sepolia
```
cast call 0xA8B2B82247E3f2b49EE8858b088405e35755c096 "number()" --rpc-url $RPC_URL
```

cast send 0xA8B2B82247E3f2b49EE8858b088405e35755c096 "increment()" --private-key $PRIV_KEY  --rpc-url $RPC_URL


## anvil
anvil start a local eth node
