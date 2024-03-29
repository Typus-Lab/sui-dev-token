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

-   BTC: 0xd5c1f62d32f140a59c2ce2997a912b1bd43623a1
-   ETH: 0x88aa89fa8f405223401e212548798965655ac189
-   SUI: 0xd5805a9e4037ef5ae51afbab2a4cd36090bb6c8a

### Registry

-   BTC: 0x86d252653e78b9f7c7b5382f93f5c74852544e1c
-   ETH: 0x569832dd430ea3d31853b2e93e545bde89526021
-   SUI: 0xde87ddc6cc6570ae8ff3bf9ab4cf07b2d5f7bba3

## Usage (Updated)

### Devnet (Updated 3/29)

```
export TOKEN_PACKAGE=0x29fc31d3927124688cc9abee4431b6dec9611beb4677b4e55cebca58641854b6
export BTC=0xc5fb0ac89e57b8a85d6667f528a4c7894877b0d03c94d7a32ae546009a7570cf
export ETH=0x07991b3ba4d63f4c2f73877734707853d1a6aa25dbad66e989801a26d7215eea
export SUI=0x8fdc8693b5a03a86dccd40ef5d2aa133a4a31b0dab8e6d65aea01c0494a82c5d
export USDC=0x2fe18e62be58ca8313b43abcd2b579dc7f20c8b5d02337e846c2a8fc8d85a40d
export APT=0xfe0a0d9dd1ce22edc422e6ba42c32d8b50b07537a4d87ef7b5599acdbbe4976c
export DOGE=0xea840ee2b0debd2922bb148d527d0a971de744ec4c47f092e84d8aa370463f1e
```

### Testnet (Updated 5/15)

```
    "TOKEN_PACKAGE": "0x949572061c09bbedef3ac4ffc42e58632291616f0605117cec86d840e09bf519",
    "BTC_TOKEN_REGISTRY": "0xcf5184b85f47cb1ffe421249e48b2cd34807534e1a4b4ad384009295bbbd3bf4",
    "ETH_TOKEN_REGISTRY": "0x5cd3726a1d1ef32bffaaeb2ec4964f0ffac56cfb919f7d13d4672aed5059bfa1",
    "USDC_TOKEN_REGISTRY": "0xf7df3c68a7d3ffc54065565c94a9fa3f5342957340bce78be74373846241a833",
```

### Mint BTC

`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "btc" --function "mint" --args $BTC "0x3B9ACA00"`

### Mint ETH

`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "eth" --function "mint" --args $ETH "0x3B9ACA00"`

### Mint SUI

`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "sui" --function "mint" --args $SUI "0x3B9ACA00"`
