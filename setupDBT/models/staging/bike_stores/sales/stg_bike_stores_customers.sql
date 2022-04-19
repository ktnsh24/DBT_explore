WITH source_customers AS (
    SELECT * FROM {{ source('sales_store', 'customers') }}
    ),

    final AS (
        SELECT * FROM source_customers
    )

    SELECT * FROM final

