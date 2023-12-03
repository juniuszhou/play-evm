# Op stack

## layers

1. DA, provide the input data for op stack based chain. including the ethereum call data, event and EIP4844 blobs

2. Sequencing
it collects the transactions in OP stack chain and publish to DA.
single sequencer and multiple sequencer

3. Derivation
how to process the raw data in DB, then generate the input sent to execution layer

rollup
indexer

4. Execution
structure of state in OP stack system, and state transition function

evm


5. settlement layer
establish a view of the state in OP stack chain on external chain.  it is read only

attestation based fault proof
fault proof optimistic settlement
validity proof settlement




## all nodes to build a OP stack chain
1. smart contract in Layer 1
2. Sequencer node, include and order transaction
3. consensus client, list and order of blocks
4. execution client, execute transactions and store/update state
5. batcher send all transactions to L1
6. proposer send the state of chain to L1


