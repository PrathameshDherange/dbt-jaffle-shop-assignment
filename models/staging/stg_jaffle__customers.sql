with source as (
    Select * from {{ source('jaffle_shop', 'customers') }}
)

, renamed as (
    select id as customer_id,
    first_name,
    last_name,
    email,
    _loaded_at
    from customers
    
)
Select * from renamed