
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_030') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_030') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_030') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
