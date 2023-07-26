
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_076') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_076') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_076') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
