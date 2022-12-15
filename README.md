# sui-dev-token

Fake Token on Sui Devnet for Testing Only

## Publish

Run
`sui client publish  --gas-budget 10000`

### Result

```
Created Objects:
  - ID: 0x19c9e6665005b957caba28966029c44ea1755e59 , Owner: Immutable
  - ID: 0x1aa32408c79a44d12a6bc97c0f42c7cc7a3214b4 , Owner: Shared
  - ID: 0x2ed816a1f36adb7f9d5639e16bac81be7720ebb1 , Owner: Immutable
  - ID: 0x361be0a6f501063cb84ec946d647fe1a8042a89d , Owner: Immutable
  - ID: 0x90ce1df83f63be7e034d5f6faadd5e7a0923960d , Owner: Immutable
  - ID: 0xa61903455e77007e4359c3fabe5eb7669837d3e1 , Owner: Shared
  - ID: 0xe1801aaa0d78bb1104f9f1e7fa8827126c78c5de , Owner: Shared
```

## Usage

`export PACKAGE=0x04aed544785e606bbda1100b7af9aaefb1db60b3`

### CoinMetadata
* BTC: 0x703ad753ddcf44b755cb6a93f5452af663f514e0
* ETH: 0xa31de30407a1fa6bd8bba8e61fc298a778375d29
* SUI: 0x4a87d423d4508359f3c24fda2c938b47fe65e440


### Registry
* BTC: 0x1d41542c9bcbb3427e80afb6cd7f05b304feb149
* ETH: 0x97da9ec6f9842025480b73a2249e8670491c37d6
* SUI: 0xa0b7b5fc89ee0fa8a1f3355f9370c9651f7611b6


### Mint

`sui client call --gas-budget 10000 --package $PACKAGE --module "eth" --function "mint" --args 0xe1801aaa0d78bb1104f9f1e7fa8827126c78c5de 1000000000`

`sui client call --gas-budget 10000 --package $PACKAGE --module "sui" --function "mint" --args 0xa61903455e77007e4359c3fabe5eb7669837d3e1 1000000000`
