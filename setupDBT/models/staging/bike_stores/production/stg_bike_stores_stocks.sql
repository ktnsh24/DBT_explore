WITH source_stocks AS (
    SELECT * FROM {{ source('production_store', 'stocks') }}
    ),

    final AS (
        SELECT * FROM source_stocks
    )

    SELECT * FROM final

