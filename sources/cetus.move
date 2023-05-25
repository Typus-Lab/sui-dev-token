module sui_dev_token::cetus {
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::object::{Self, UID};
    use sui::coin::{Self, TreasuryCap};
    use sui::url;

    use std::option;

    // ======== Structs =========

    struct Registry has key{
        id: UID,
        treasury_cap: TreasuryCap<CETUS>
    }

    struct CETUS has drop {}

    fun init(witness: CETUS, ctx: &mut TxContext) {
        let (treasury_cap, coin_metadata) = coin::create_currency(
            witness,
            9,
            b"CETUS",
            b"Typus Cetus",
            b"Fake Cetus on Sui testnet for testing only maintained by Typus Lab",
            option::some(url::new_unsafe_from_bytes(b"https://raw.githubusercontent.com/Typus-Lab/typus-asset/main/assets/CETUS.svg")),
            ctx
        );

        let registry =  Registry {
            id: object::new(ctx),
            treasury_cap
        };

        transfer::public_share_object(coin_metadata);
        transfer::share_object(registry);
    }

    public entry fun mint(registry: &mut Registry, value: u64, ctx: &mut TxContext) {

        coin::mint_and_transfer(&mut registry.treasury_cap, value, tx_context::sender(ctx), ctx);
    }
}