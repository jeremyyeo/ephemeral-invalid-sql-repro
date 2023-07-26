
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_096') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_096') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_096') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
