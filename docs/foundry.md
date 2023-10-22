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

## test with filter regex
forge test --match-test .*Increment.* // Increment in test name
forge test --match-test test // start with test


## cast call example
```
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 "number()" --rpc-url 127.0.0.1:8545
```

cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 0x5fbdb2315678afecb367f032d93f642f64180aa3 "increment()" --rpc-url http://127.0.0.1:8545


## anvil
anvil start a local eth node
