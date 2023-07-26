
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_003') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_003') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_003') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
