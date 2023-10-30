WITH
survey AS (
SELECT * FROM `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`),

x3 AS ( 
SELECT 
    id as table1_id,
    year as table1_year,
    industry_code_ANZSIC as table1_industry_code,
    industry_name_ANZSIC as table1_industry_name,
    rme_size_grp as table1_rme_size_grp,
    variable as table1_variable,
    value as table1_value,
    unit as table1_unit,
    serial_number  as table1_serial_number,
    serial_number_1  as table1_serial_number_1,
FROM survey
)

SELECT * FROM x3
