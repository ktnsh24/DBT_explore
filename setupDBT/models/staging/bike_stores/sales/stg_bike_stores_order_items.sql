WITH source_order_items AS (
    SELECT * FROM {{ source('sales_store', 'order_items') }}
    ),

    final AS (
        SELECT * FROM source_order_items
    )

    SELECT * FROM final

