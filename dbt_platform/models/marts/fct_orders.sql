with orders as (

    select 
        *
    from {{ ref('int_orders_enriched') }}

),

final as (

    select 
        order_id,
        customer_id,
        product_id,
        amount,
        price,
        status,
        ordered_at
    from orders
)

select * from final
