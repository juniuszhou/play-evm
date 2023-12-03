# celestia 


## different nodes in celestia network

### Consensus:

Validator node: This type of node participates in consensus by producing and voting on blocks.
Full consensus node: A celestia-app Full node to sync blockchain history.


### Data Availability:

Bridge node: This node bridges blocks between the Data-Availability network and the Consensus network.
Full storage node: This node stores all the data but does not connect to Consensus.
Light node: Light clients conduct data availability sampling on the Data Availability network.



## run local dev net docker


eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBbGxvdyI6WyJwdWJsaWMiLCJyZWFkIiwid3JpdGUiLCJhZG1pbiJdfQ.bDuO4JJZmbvZxWmiDxNjIdPoCWRm7WtTbhbnvQQbuwE


bash-3.2$ 

## key words
rollup 
rollkit 

rollkit cosmos sdk to replace cosmos sdk, 
rollkit cometbft to replace origin cometbft

rollkit is a tool to use celestia a block data layer to replace the cometbft 
but keep the same abci interface. 

rollkit can support 
1. a separate chain based on rollkit cosmos sdk
2. cosmwasm based on wasmd but sdk and bft replaced
3. evm based on cosmos sdk, like evmos. 

## 

