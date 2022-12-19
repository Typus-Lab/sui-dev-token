# sui-dev-token

Fake Token on Sui Devnet for Testing Only

## Publish

Run
`sui client publish  --gas-budget 10000`

### Result

```
Created Objects:
  - ID: 0x15d919a96e4b91680276a4f6674a638de3181f9b , Owner: Immutable
  - ID: 0x1b44294ff9b2d481d027d354ac721eac65fac613 , Owner: Immutable
  - ID: 0x1dc9badec3668714180be572a12f21221774f01c , Owner: Shared
  - ID: 0x2b4ce2ba3a4389362fd8735e9b2aa3bdbfee254d , Owner: Shared
  - ID: 0x2f723c9c9e8a2bb6d0654a6fc30116d83960a614 , Owner: Immutable
  - ID: 0x427b4a2b39e96fd4b3053dd5ecee973daf405cbe , Owner: Shared
  - ID: 0xcd396739e72ccd373eca7e575d50ba1438bd8022 , Owner: Immutable
```

## Usage

### Package
0xcd396739e72ccd373eca7e575d50ba1438bd8022

### CoinMetadata
* BTC: 0x2f723c9c9e8a2bb6d0654a6fc30116d83960a614
* ETH: 0x15d919a96e4b91680276a4f6674a638de3181f9b
* SUI: 0x1b44294ff9b2d481d027d354ac721eac65fac613


### Registry
* BTC: 0x1dc9badec3668714180be572a12f21221774f01c
* ETH: 0x427b4a2b39e96fd4b3053dd5ecee973daf405cbe
* SUI: 0x2b4ce2ba3a4389362fd8735e9b2aa3bdbfee254d


## Mint

```
export TOKEN_PACKAGE=0xcd396739e72ccd373eca7e575d50ba1438bd8022
export BTC=0x1dc9badec3668714180be572a12f21221774f01c
export ETH=0x427b4a2b39e96fd4b3053dd5ecee973daf405cbe
export SUI=0x2b4ce2ba3a4389362fd8735e9b2aa3bdbfee254d
```

### Mint BTC
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "btc" --function "mint" --args $BTC 1000000000`

### Mint ETH
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "eth" --function "mint" --args $ETH 1000000000`

### Mint SUI
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "sui" --function "mint" --args $SUI 1000000000`
