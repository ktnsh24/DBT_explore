
WITH products AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_products') }}
    ),

    brands AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_brands') }}
    ),

    categories AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_categories') }}
    ),

    final AS (
    SELECT products.source_product_id
      ,products.product_name
      ,products.brand_id
      ,products.category_id
      ,products.model_year
      ,products.list_price
      ,categories.category_name
      ,brands.brand_name
    FROM products
    LEFT JOIN categories ON products.category_id = categories.category_id
    LEFT JOIN brands ON products.brand_id = brands.brand_id
    )

    SELECT * FROM final