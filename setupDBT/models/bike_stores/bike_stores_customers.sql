WITH source_customers AS (
    SELECT * FROM {{ source('sales_store', 'customers') }}
    ),

    FINAL AS (
        SELECT * FROM source_customers
    )

    SELECT * FROM FINAL

