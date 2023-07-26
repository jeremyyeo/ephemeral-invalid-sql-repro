
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_066') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_066') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_066') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
