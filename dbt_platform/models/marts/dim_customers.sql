with customers as (

    select 
        *
    from {{ ref('stg_customers') }}

),

final as (

    select
        customer_id,
        first_name,
        last_name,
        email,
        created_at,
        first_name || ' ' || last_name as full_name
    from customers

)

select * from final
