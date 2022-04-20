WITH source_stores AS (
    SELECT * FROM {{ source('sales_store', 'stores') }}
    ),

    final AS (
        SELECT * FROM source_stores
    )

    SELECT * FROM final

