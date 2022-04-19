WITH source_orders AS (
    SELECT * FROM {{ source('sales_store', 'orders') }}
    ),

    final AS (
        SELECT * FROM source_orders
    )

    SELECT * FROM final

