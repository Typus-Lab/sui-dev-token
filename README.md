# sui-dev-token

Fake Token on Sui Devnet for Testing Only

Run
`sui client publish  --gas-budget 10000`

Result:

```
Created Objects:
  - ID: 0x3bff7c8c97cd5c732fd3c7f4b7de6ef6be609762 , Owner: Shared
  - ID: 0x6aad642a43075eabad0e9b0e5ed1064988c18fda , Owner: Shared
  - ID: 0x6c074326e54b1144d03a7ab5b181935a4f8f35f8 , Owner: Shared
  - ID: 0x88a8537e23bfbf9686dddd2ca29bdd55563e65f1 , Owner: Shared
  - ID: 0x8d0807c8853df03c8ef5c86ac0a64aa55f41bf83 , Owner: Shared
  - ID: 0x8f17d4911575dbc503810c6519a6e58eb7a52f56 , Owner: Immutable
```

Each Shared objects is the `Registry` of token.

* BTC: 0x8d0807c8853df03c8ef5c86ac0a64aa55f41bf83
* ETH: 0x6aad642a43075eabad0e9b0e5ed1064988c18fda
* SUI: 0x6c074326e54b1144d03a7ab5b181935a4f8f35f8
* USDC: 0x3bff7c8c97cd5c732fd3c7f4b7de6ef6be609762
* USDT: 0x88a8537e23bfbf9686dddd2ca29bdd55563e65f1

<font color=#FF0000> export PACKAGE=0x8f17d4911575dbc503810c6519a6e58eb7a52f56</font>

`sui client call --gas-budget 10000 --package $PACKAGE --module "token_btc" --function "mint" --args 0x8d0807c8853df03c8ef5c86ac0a64aa55f41bf83 1000`

`sui client call --gas-budget 10000 --package $PACKAGE --module "token_eth" --function "mint" --args 0x6aad642a43075eabad0e9b0e5ed1064988c18fda 1000`
