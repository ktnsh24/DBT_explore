
WITH stocks AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_stocks') }}
    ),

    stores AS (
    SELECT [store_id]
    FROM {{ ref('stg_bike_stores_stores') }}
    ),

    dim_products AS (
    SELECT [source_product_id]
      ,[brand_id]
      ,[category_id]
      ,[model_year]
      ,[list_price]
    FROM {{ ref('dim_products') }}
    ),

    final AS (
    SELECT
        stores.store_id
       ,dim_products.source_product_id
       ,dim_products.brand_id
       ,dim_products.model_year
       ,dim_products.list_price
    FROM stocks
    LEFT JOIN stores ON stocks.store_id = stores.store_id
    LEFT JOIN dim_products ON stocks.product_id = dim_products.source_product_id
    )

    SELECT * FROM final