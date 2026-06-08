with src as (

    select 
        *
    from {{ source('raw', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        email,
        created_at
    from src

)

select * from renamed
