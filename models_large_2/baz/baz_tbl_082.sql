
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_082') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_082') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_082') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
