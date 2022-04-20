WITH source_staffs AS (
    SELECT * FROM {{ source('sales_store', 'staffs') }}
    ),

    final AS (
        SELECT * FROM source_staffs
    )

    SELECT * FROM final

