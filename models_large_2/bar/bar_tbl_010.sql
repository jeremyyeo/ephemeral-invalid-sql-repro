
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_010') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_010') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_010') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
