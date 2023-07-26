
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_041') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_041') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_041') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
