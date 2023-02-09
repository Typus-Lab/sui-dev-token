# sui-dev-token

Fake Token on Sui Devnet for Testing Only

## Publish

Run
`sui client publish  --gas-budget 10000`

### Result

```
Created Objects:
  - ID: 0x2009591841eff19d6c5e97eae7a45f2f3908e502 , Owner: Immutable
  - ID: 0x569832dd430ea3d31853b2e93e545bde89526021 , Owner: Shared
  - ID: 0x86d252653e78b9f7c7b5382f93f5c74852544e1c , Owner: Shared
  - ID: 0x88aa89fa8f405223401e212548798965655ac189 , Owner: Immutable
  - ID: 0xd5805a9e4037ef5ae51afbab2a4cd36090bb6c8a , Owner: Immutable
  - ID: 0xd5c1f62d32f140a59c2ce2997a912b1bd43623a1 , Owner: Immutable
  - ID: 0xde87ddc6cc6570ae8ff3bf9ab4cf07b2d5f7bba3 , Owner: Shared
```

### Package
0x2009591841eff19d6c5e97eae7a45f2f3908e502

### CoinMetadata
* BTC: 0xd5c1f62d32f140a59c2ce2997a912b1bd43623a1
* ETH: 0x88aa89fa8f405223401e212548798965655ac189
* SUI: 0xd5805a9e4037ef5ae51afbab2a4cd36090bb6c8a


### Registry
* BTC: 0x86d252653e78b9f7c7b5382f93f5c74852544e1c
* ETH: 0x569832dd430ea3d31853b2e93e545bde89526021
* SUI: 0xde87ddc6cc6570ae8ff3bf9ab4cf07b2d5f7bba3


## Usage (Updated)

### Devnet (Updated)
```
export TOKEN_PACKAGE=0x232b50236cb72e062e5a028614ba5e0df666e0d5
export BTC=0x33c2779135a1b8777e5f27719e042bb0dbb6399f
export ETH=0xc53adf9731ab7f6633d85b461361f2347070fa1b
export SUI=0xece242a120249621ba09cef7509fd3d6399699a8
export USDC=0x181285489f732d928f06f2bb94c0a6aa7e590dcc
export APT=0x4ce8e5ed112d58134d410669ed652753beb8a2c8
export DOGE=0xb12b0730ddac94d2ac900283eee4a63c5c3fe55b
```

### Testnet (Updated)
```
export TOKEN_PACKAGE=0xcb6f5de70c65b988556b93988a58a57919584e56
export BTC=0xeaceed911a58e65b3b4f84193f73fa33c9dc2268
export ETH=0x5746dfc9d43cd87d6e83e81799dff73144f957dc
export SUI=0xa49e368ca795908cf0abe25b9a23acdc16919ca3
export USDC=0x69d4bc4b2f574493e5d8a3964663034d4deef17f
export APT=0x2516cb5cbda98cc253e7ad6f742dac206d1d5635
export DOGE=0xa232db5fcf84058adf7c9426d8b30576718fcd40
```

### Mint BTC
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "btc" --function "mint" --args $BTC "0x3B9ACA00"`

### Mint ETH
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "eth" --function "mint" --args $ETH "0x3B9ACA00"`

### Mint SUI
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "sui" --function "mint" --args $SUI "0x3B9ACA00"`

