/*
/// Module: circle_usdc
module circle_usdc::circle_usdc {

}
*/
module circle_usdc::usdc {
    use sui::coin::{Self, TreasuryCap, Coin};
    use sui::url;
    use sui::balance::{Self, Balance};
    use sui::dynamic_field;
    use std::type_name;

    // ======== Structs =========

    public struct Registry has key{
        id: UID,
        treasury_cap: TreasuryCap<USDC>
    }

    public struct USDC has drop {}

    fun init(witness: USDC, ctx: &mut TxContext) {
        let (treasury_cap, coin_metadata) = coin::create_currency(
            witness,
            9,
            b"USDC",
            b"Typus Circle Usdc",
            b"Fake Circle Usdc on Sui testnet for testing only maintained by Typus Lab",
            option::some(url::new_unsafe_from_bytes(b"https://raw.githubusercontent.com/Typus-Lab/typus-asset/main/assets/USDC.svg")),
            ctx
        );

        let registry =  Registry {
            id: object::new(ctx),
            treasury_cap
        };

        transfer::public_share_object(coin_metadata);
        transfer::share_object(registry);
    }

    public fun mint(registry: &mut Registry, value: u64, ctx: &mut TxContext): Coin<USDC> {
        let coin = coin::mint(&mut registry.treasury_cap, value, ctx);

        coin
    }

    public fun swap<TOKEN>(registry: &mut Registry, balance: Balance<TOKEN>, ctx: &mut TxContext): Coin<USDC> {
        let value = balance.value();
        if (!dynamic_field::exists_(&registry.id, type_name::get<TOKEN>())) {
            dynamic_field::add(&mut registry.id, type_name::get<TOKEN>(), balance::zero<TOKEN>());
        };
        balance::join(dynamic_field::borrow_mut(&mut registry.id, type_name::get<TOKEN>()), balance);
        let coin = coin::mint(&mut registry.treasury_cap, value, ctx);

        coin
    }
}