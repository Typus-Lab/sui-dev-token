module sui_dev_token::sui {
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::object::{Self, UID};
    use sui::coin::{Self, TreasuryCap};

    use std::option;

    // ======== Structs =========

    struct Registry has key{
        id: UID,
        treasury_cap: TreasuryCap<SUI>
    }

    struct SUI has drop {}

    fun init(witness: SUI, ctx: &mut TxContext) {
        let (treasury_cap, coin_metadata) = coin::create_currency( 
            witness,
            9,
            b"SUI",
            b"Typus Sui",
            b"Fake Sui on Sui devnet for testing only maintained by Typus Lab",
            option::none(),
            ctx
        );

        let registry =  Registry {
            id: object::new(ctx),
            treasury_cap
        };

        transfer::freeze_object(coin_metadata);
        transfer::share_object(registry);
    }

    public entry fun mint(registry: &mut Registry, value: u64, ctx: &mut TxContext) {

        coin::mint_and_transfer(&mut registry.treasury_cap, value, tx_context::sender(ctx), ctx);
    }
}