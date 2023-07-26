
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_097') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_097') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_097') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
