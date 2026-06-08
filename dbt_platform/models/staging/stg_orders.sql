with src as (

    select 
        *
    from {{ source('raw', 'orders') }}

),

renamed as (

    select
        id as order_id,
        customer_id,
        product_id,
        status,
        amount,
        ordered_at
    from src

)

select * from renamed
