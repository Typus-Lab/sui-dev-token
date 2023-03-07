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
export TOKEN_PACKAGE=0x8ccdddc0e8d9287953375ae83cda731d7c75e0ec
export BTC=0x5f9d8654f5d33b1626fed371e41e44946baf68c0
export ETH=0x7ef0fe2beb304d8c320e2d8159955bc8f993a5ad
export SUI=0xf338fc7b7519da807101b2d1c167e114504b479e
export USDC=0x5a6192928590539f5847adc3c7270ea4ea44a566
export APT=0x97d4eb5e10bb4291965721c32dc54c6606ef0678
export DOGE=0xff71b3e61640e988ab6473901782c210593b1635
```

### Mint BTC
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "btc" --function "mint" --args $BTC "0x3B9ACA00"`

### Mint ETH
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "eth" --function "mint" --args $ETH "0x3B9ACA00"`

### Mint SUI
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "sui" --function "mint" --args $SUI "0x3B9ACA00"`

