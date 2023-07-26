
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_002') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_002') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_002') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
