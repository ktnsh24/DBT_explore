
WITH stores AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_stocks') }}
    ),

    products AS (
    SELECT [source_product_id]
      ,[brand_id]
      ,[category_id]
      ,[model_year]
      ,[list_price]
    FROM {{ ref('stg_bike_stores_products') }}
    ),

    final AS (
    SELECT *
    FROM stores
    LEFT JOIN products ON stores.product_id = products.source_product_id
    )

    SELECT * FROM final