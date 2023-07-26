
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_061') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_061') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_061') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
