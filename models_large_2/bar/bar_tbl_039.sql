
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_039') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_039') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_039') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
