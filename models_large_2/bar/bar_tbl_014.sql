
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_014') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_014') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_014') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
