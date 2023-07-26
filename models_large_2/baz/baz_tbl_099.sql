
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_099') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_099') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_099') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
