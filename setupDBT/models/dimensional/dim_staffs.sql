
WITH staffs AS (
    SELECT
       staff_id
      ,first_name
      ,last_name
      ,email AS staff_email
      ,phone AS staff_phone
      ,active
      ,store_id
      ,manager_id
    FROM {{ ref('stg_bike_stores_staffs') }}
    ),

    stores AS (
    SELECT
       store_id
      ,store_name
      ,phone AS store_phone
      ,email AS store_email
      ,street
      ,city
      ,state
      ,zip_code
    FROM {{ ref('stg_bike_stores_stores') }}
    ),

    final AS (
    SELECT staffs.staff_id
      ,staffs.first_name
      ,staffs.last_name
      ,staffs.staff_email
      ,staffs.staff_phone
      ,staffs.active
      ,staffs.store_id
      ,staffs.manager_id
      ,stores.store_name
      ,stores.store_phone
      ,stores.store_email
      ,stores.street
      ,stores.city
      ,stores.state
      ,stores.zip_code
    FROM staffs
    LEFT JOIN stores ON staffs.store_id = stores.store_id
    )

    SELECT * FROM final