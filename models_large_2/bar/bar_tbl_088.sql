
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_088') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_088') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_088') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
