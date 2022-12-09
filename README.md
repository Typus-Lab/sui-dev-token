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

`export PACKAGE=0x39620ee07978d9b9bbd553c8534069332593d7f9`

### CoinMetadata
* BTC: 0x6401c354ca825c2b9c2cba88f6bc47680e61339e
* ETH: 0x12b021f01df75690a0c85c5b99085a9effc16f68


### Registry
* BTC: 0x8adea878fc0092932eeef6cfa89a77b8d0892cf7
* ETH: 0x7ad31a0d220451597d2dc87dc6e1d23ea6d81280
<!-- * SUI: 0x6c074326e54b1144d03a7ab5b181935a4f8f35f8
* USDC: 0x3bff7c8c97cd5c732fd3c7f4b7de6ef6be609762
* USDT: 0x88a8537e23bfbf9686dddd2ca29bdd55563e65f1 -->

### Mint

`sui client call --gas-budget 10000 --package $PACKAGE --module "btc" --function "mint" --args 0x8adea878fc0092932eeef6cfa89a77b8d0892cf7 1000`

`sui client call --gas-budget 10000 --package $PACKAGE --module "eth" --function "mint" --args 0x7ad31a0d220451597d2dc87dc6e1d23ea6d81280 1000`
