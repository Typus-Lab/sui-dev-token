# sui-dev-token

Fake Token on Sui Devnet for Testing Only

## Publish

Run
`sui client publish  --gas-budget 10000`

### Result

```
Created Objects:
  - ID: 0x12b021f01df75690a0c85c5b99085a9effc16f68 , Owner: Immutable
  - ID: 0x39620ee07978d9b9bbd553c8534069332593d7f9 , Owner: Immutable
  - ID: 0x6401c354ca825c2b9c2cba88f6bc47680e61339e , Owner: Immutable
  - ID: 0x7ad31a0d220451597d2dc87dc6e1d23ea6d81280 , Owner: Shared
  - ID: 0x8adea878fc0092932eeef6cfa89a77b8d0892cf7 , Owner: Shared
```

## Usage

`export PACKAGE=0x0a7a15d173690ac676b03eb8285a615a8982cb27`

### CoinMetadata
* BTC: 0x25c417ee04e789911fdd4b6edabbeb4320fe7eea
* ETH: 0x6afcada4464d98c5530afe68f513a58b6a31ed88
* USDC: 0xa51624413b9e323f7daaa407624453f13791732c


### Registry
* BTC: 0x7fe9f4e9c4cb004a19cd5b5b2cc71509f94780aa
* ETH: 0xa1e5ae3365f54f2f0addba26d1843a99a3d04eab
* USDC: 0xcd64daa636a19c8ba55422167a22b20ff7fbbfde


### Mint

`sui client call --gas-budget 10000 --package $PACKAGE --module "btc" --function "mint" --args 0x8adea878fc0092932eeef6cfa89a77b8d0892cf7 1000`

`sui client call --gas-budget 10000 --package $PACKAGE --module "eth" --function "mint" --args 0x7ad31a0d220451597d2dc87dc6e1d23ea6d81280 1000`
