With
{{config(materialized='view')}}

inter_survey as (
SELECT
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey01') }},
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey02') }}
FROM
     {{ ref('stg_annual_enterprise_survey02') }} AS t2
JOIN
     {{ ref('stg_annual_enterprise_survey01') }} AS t1
ON
    t2.table1_id = t1.table2_id
WHERE
    t1.table1_year=2013
GROUP BY
    t1.table1_id,
    t1.table1_year,
    t1.table1_industry_code,
    t1.table1_industry_name,
    t1.table1_rme_size_grp,
    t1.table1_variable,
    t1.table1_value,
    t1.table1_unit,
    t1.table1_serial_number,
    t1.table1_serial_number_1,
    t2.table2_id,
    t2.table2_year,
    t2.table2_industry_aggregation,
    t2.table2_industry_code,
    t2.table2_industry_name,
    t2.table2_units,
    t2.table2_value,
    t2.table2_industry_code_ANZSIC06,
    t2.table2_serial_number,
    t2.table2_serial_number_1
    
select * from inter_survey