
WITH source_products AS (
    SELECT [product_id] AS source_product_id
      ,[product_name]
      ,[brand_id]
      ,[category_id]
      ,[model_year]
      ,[list_price]
    FROM {{ source('production_store', 'products') }}
    ),

    FINAL AS (
        SELECT * FROM source_products
    )

    SELECT * FROM FINAL