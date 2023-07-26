
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_032') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_032') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_032') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
