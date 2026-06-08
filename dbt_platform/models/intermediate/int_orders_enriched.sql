with orders as (

    select 
        *
    from {{ ref('stg_orders') }}

),

customers as (

    select 
        *
    from {{ ref('stg_customers') }}

),

products as (

    select 
        *
    from {{ ref('stg_products') }}

),

enriched as (

    select
        o.order_id,
        o.status,
        o.amount,
        o.ordered_at,
        c.customer_id,
        c.first_name,
        c.last_name,
        c.email,
        p.product_id,
        p.product_name,
        p.category,
        p.price
    from orders as o
    left join customers as c
        on o.customer_id = c.customer_id
    left join products as p
        on o.product_id = p.product_id

)

select * from enriched
