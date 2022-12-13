module sui_dev_token::btc {
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    use sui::object::{Self, UID};
    use sui::coin::{Self, TreasuryCap};
    use sui::url;

    use std::option;

    // ======== Structs =========

    struct Registry has key{
        id: UID,
        treasury_cap: TreasuryCap<BTC>
    }

    struct BTC has drop {}

    fun init(witness: BTC, ctx: &mut TxContext) {
        let (treasury_cap, coin_metadata) = coin::create_currency( 
            witness,
            8,
            b"BTC",
            b"Typus Bitcoin",
            b"Fake Bitcoin on Sui devnet for testing only maintained by Typus Lab",
            option::some(url::new_unsafe_from_bytes(b"ipfs://bafkreifkkob3ne2kyd4qfxe5azxyyowaumi6y34ebyo6nvybmqg2znyhby")),
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