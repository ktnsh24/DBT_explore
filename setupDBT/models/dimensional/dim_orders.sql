
WITH orders AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_orders') }}
    ),

    customers AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_customers') }}
    ),

    stores AS (
    SELECT *
    FROM {{ ref('stg_bike_stores_stores') }}
    ),

    dim_staffs AS (
    SELECT *
    FROM {{ ref('dim_staffs') }}
    ),

    final AS (
    SELECT orders.order_id
      ,customers.customer_id
      ,orders.order_status
      ,orders.order_date
      ,orders.required_date
      ,orders.shipped_date
      ,stores.store_id
      ,dim_staffs.staff_id
    FROM orders
    LEFT JOIN customers ON orders.customer_id = customers.customer_id
    LEFT JOIN stores ON orders.store_id = stores.store_id
    LEFT JOIN dim_staffs ON orders.staff_id = dim_staffs.staff_id
    )

    SELECT * FROM final