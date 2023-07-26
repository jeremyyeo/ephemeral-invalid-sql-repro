
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_023') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_023') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_023') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
