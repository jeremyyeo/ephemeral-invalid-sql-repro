
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_067') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_067') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_067') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
