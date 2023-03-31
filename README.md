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

- BTC: 0xd5c1f62d32f140a59c2ce2997a912b1bd43623a1
- ETH: 0x88aa89fa8f405223401e212548798965655ac189
- SUI: 0xd5805a9e4037ef5ae51afbab2a4cd36090bb6c8a

### Registry

- BTC: 0x86d252653e78b9f7c7b5382f93f5c74852544e1c
- ETH: 0x569832dd430ea3d31853b2e93e545bde89526021
- SUI: 0xde87ddc6cc6570ae8ff3bf9ab4cf07b2d5f7bba3

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

### Testnet (Updated 3/31)

```
export TOKEN_PACKAGE=0xd175cff04f1d49574efb6f138bc3b9b7313915a57b5ca04141fb1cb4f66984b2
export BTC=0x15b4c8c7a3fb5aa84fd1bfa4f419dbe065c5628cbfacdc812926c1c004444a54
export ETH=0x823ad0a5c8de5a6bef7bb1112b623765b8d178c5708d6360be49da572226f5c2
export SUI=0xf979fdd672a8c3578563087295a9a878b52c33cfb57077a1cb827829aa52d3cc
export USDC=0xbf453a89a9aa37fdd377e2e014f2777003a1594a289738ca63fccf8429729d81
export APT=0x2bbca3fe6829d84ef8bf74fb5420924384d5368f0de5cc1ba2159eaeffab028c
export DOGE=0xefb88c143d453005d862fddda58c05c9749110dfa0ae6277b8e96a70e12b8166
```

### Mint BTC

`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "btc" --function "mint" --args $BTC "0x3B9ACA00"`

### Mint ETH

`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "eth" --function "mint" --args $ETH "0x3B9ACA00"`

### Mint SUI

`sui client call --gas-budget 10000 --package $TOKEN_PACKAGE --module "sui" --function "mint" --args $SUI "0x3B9ACA00"`
