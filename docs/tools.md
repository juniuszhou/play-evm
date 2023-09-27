# tools for evm development

## solc
install from source ethereum/solidity


```
solc --abi /Users/junius/github/juniuszhou/play-evm/contracts/contracts/Greeter.sol 
Warning: This is a pre-release compiler version, please do not use it in production.


======= /Users/junius/github/juniuszhou/play-evm/contracts/contracts/Greeter.sol:Greeter =======
Contract JSON ABI
[{"inputs":[{"internalType":"string","name":"_greeting","type":"string"}],"stateMutability":"nonpayable","type":"constructor"},{"inputs":[],"name":"greet","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"string","name":"_greeting","type":"string"}],"name":"setGreeting","outputs":[],"stateMutability":"nonpayable","type":"function"}]
bash-3.2$ 
```


## geth abigen
https://geth.ethereum.org/docs/

install from source ethereum/go-ethereum

```
bash-3.2$ abigen --abi greet.json --pkg main --type Storage --out Storage.go
```

## 
