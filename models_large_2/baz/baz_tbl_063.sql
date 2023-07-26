
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_063') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_063') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_063') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
