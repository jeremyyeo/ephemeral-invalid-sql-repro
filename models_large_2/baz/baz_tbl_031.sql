
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_031') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_031') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_031') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
