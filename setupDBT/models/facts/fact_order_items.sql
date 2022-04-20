
WITH order_items AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_order_items') }}
    ),

    dim_orders AS (
    SELECT *
    FROM {{ ref('dim_orders') }}
    ),

    dim_products AS (
    SELECT *
    FROM {{ ref('dim_products') }}
    ),

    final AS (
    SELECT
        dim_orders.order_id
       ,order_items.item_id
       ,dim_products.source_product_id
       ,order_items.quantity
       ,order_items.list_price
       ,order_items.discount
    FROM order_items
    LEFT JOIN dim_orders ON order_items.order_id = dim_orders.order_id
    LEFT JOIN dim_products ON order_items.product_id = dim_products.source_product_id
    )

    SELECT * FROM final