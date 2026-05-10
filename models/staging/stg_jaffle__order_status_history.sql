with 

source as (

    select * from {{ source('jaffle_shop', 'order_status_history') }}

),

renamed as (

    select
        order_id,
        status,
        updated_at

    from source

)

select * from renamed