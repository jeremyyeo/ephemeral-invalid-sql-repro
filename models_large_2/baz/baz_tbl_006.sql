
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_006') }}

), bbb AS (

    SELECT * FROM {{ ref('bar_tbl_006') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_006') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
