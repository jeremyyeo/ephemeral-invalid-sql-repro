
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_068') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_068') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_068') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
