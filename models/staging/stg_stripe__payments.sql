with 

source as (

    select * from {{ source('stripe', 'payments') }}

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,
        amount,
        status,
        created_at
    from source

)

select * from renamed