with src as (

    select 
        *
    from {{ source('raw', 'products') }}

),

renamed as (
    
    select 
        id as product_id,
        name as product_name,
        category,
        price
    from src

)

select * from renamed 
