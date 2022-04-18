
WITH source_categories AS (
    SELECT * FROM {{ source('production_store', 'categories') }}
    ),

    FINAL AS (
        SELECT * FROM source_categories
    )

    SELECT * FROM FINAL