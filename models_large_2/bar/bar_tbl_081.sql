
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_081') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_081') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_081') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
