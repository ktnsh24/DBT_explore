
WITH source_categories AS (
    SELECT * FROM {{ source('production_store', 'categories') }}
    ),

    final AS (
        SELECT * FROM source_categories
    )

    SELECT * FROM final