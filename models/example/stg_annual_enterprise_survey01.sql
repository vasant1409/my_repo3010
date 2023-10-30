WITH
survey AS (
SELECT * FROM `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`),

x3 AS ( 
SELECT 
    id as table1_id,
    year as table1_year,
    industry_code_ANZSIC06 as table1_industry_code,
    industry_name_NZSIOC as table1_industry_name,
    variable_code as table1_variable,
    value as table1_value,
    units as table1_unit,
    serial_number  as table1_serial_number,
    serial_number_1  as table1_serial_number_1,
FROM survey
)

SELECT * FROM x3
