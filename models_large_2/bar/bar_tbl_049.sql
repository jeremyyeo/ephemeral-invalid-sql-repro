
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_049') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_049') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_049') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
