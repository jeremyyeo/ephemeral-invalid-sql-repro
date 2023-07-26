
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_013') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_013') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_013') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
