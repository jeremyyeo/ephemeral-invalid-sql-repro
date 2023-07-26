
{{ config(materialized = 'table') }}

WITH aaa AS (

    SELECT * FROM {{ ref('foo_eph_043') }}

), bbb AS (

    SELECT * FROM {{ ref('foo_eph_043') }}

), ccc AS (

   SELECT * FROM {{ ref('foo_eph_043') }} 

)

SELECT * FROM aaa
UNION ALL
SELECT * FROM bbb
UNION ALL
SELECT * FROM ccc
