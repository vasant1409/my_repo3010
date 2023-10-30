WITH 
survey as (
select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`), 
x3 as (
select 
    id as table2_id,
    Year as table2_year,
    Industry_aggregation_NZSIOC as table2_industry_aggregation,
    Industry_code_NZSIOC as table2_industry_code,
    Industry_name_NZSIOC as table2_industry_name,
    Units as table2_units,
    Value as table2_value,
    Industry_code_ANZSIC06 as table2_industry_code_ANZSIC06,
    serial_number as table2_serial_number,
    serial_number_1 as table2_serial_number_1
    from survey) 

select * from x3