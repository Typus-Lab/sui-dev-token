module sui_dev_token::fud {
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::object::{Self, UID};
    use sui::coin::{Self, TreasuryCap};
    use sui::url;

    use std::option;

    // ======== Structs =========

    struct Registry has key{
        id: UID,
        treasury_cap: TreasuryCap<FUD>
    }

    struct FUD has drop {}

    fun init(witness: FUD, ctx: &mut TxContext) {
        let (treasury_cap, coin_metadata) = coin::create_currency(
            witness,
            5,
            b"FUD",
            b"Typus FUD",
            b"Fake FUD on Sui testnet for testing only maintained by Typus Lab",
            option::some(url::new_unsafe_from_bytes(b"data:image/webp;base64,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")),
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