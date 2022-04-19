WITH source_brands AS (
    SELECT * FROM {{ source('production_store', 'brands') }}
    ),

    final AS (
        SELECT * FROM source_brands
    )

    SELECT * FROM final

