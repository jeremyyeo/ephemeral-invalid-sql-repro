
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_086') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_086') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_086') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
