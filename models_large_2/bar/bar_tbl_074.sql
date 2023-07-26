
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_074') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_074') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_074') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
