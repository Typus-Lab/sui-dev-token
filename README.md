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
export TOKEN_PACKAGE=0x29fc31d3927124688cc9abee4431b6dec9611beb4677b4e55cebca58641854b6
export BTC=0xc5fb0ac89e57b8a85d6667f528a4c7894877b0d03c94d7a32ae546009a7570cf
export ETH=0x07991b3ba4d63f4c2f73877734707853d1a6aa25dbad66e989801a26d7215eea
export SUI=0x8fdc8693b5a03a86dccd40ef5d2aa133a4a31b0dab8e6d65aea01c0494a82c5d
export USDC=0x2fe18e62be58ca8313b43abcd2b579dc7f20c8b5d02337e846c2a8fc8d85a40d
export APT=0xfe0a0d9dd1ce22edc422e6ba42c32d8b50b07537a4d87ef7b5599acdbbe4976c
export DOGE=0xea840ee2b0debd2922bb148d527d0a971de744ec4c47f092e84d8aa370463f1e
```

### Mint BTC
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "btc" --function "mint" --args $BTC "0x3B9ACA00"`

### Mint ETH
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "eth" --function "mint" --args $ETH "0x3B9ACA00"`

### Mint SUI
`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "sui" --function "mint" --args $SUI "0x3B9ACA00"`

