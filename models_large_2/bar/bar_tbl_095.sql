
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_095') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_095') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_095') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
