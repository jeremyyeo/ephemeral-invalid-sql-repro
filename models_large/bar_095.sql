
{{ config(materialized = 'table') }}

WITH foo_0 AS (

    SELECT * FROM {{ ref('foo_0') }}

), foo_1 AS (

    SELECT * FROM {{ ref('foo_1') }}

), foo_2 AS (

   SELECT * FROM {{ ref('foo_2') }} 

)

SELECT * FROM foo_0
UNION ALL
SELECT * FROM foo_1
UNION ALL
SELECT * FROM foo_2
