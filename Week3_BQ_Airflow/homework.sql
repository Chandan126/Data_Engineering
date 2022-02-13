SELECT count(*) FROM `dataengineeringcourse-339017.trips_data_all.fhv_tripdata_external_table`;

SELECT count(distinct(dispatching_base_num)) FROM `dataengineeringcourse-339017.trips_data_all.fhv_tripdata_external_table`;

CREATE OR REPLACE TABLE `dataengineeringcourse-339017.trips_data_all.fhv_tripdata_partition_table`
PARTITION BY DATE(dropoff_datetime) 
CLUSTER BY dispatching_base_num AS
SELECT * FROM `dataengineeringcourse-339017.trips_data_all.fhv_tripdata_external_table`;


SELECT count(*) FROM `dataengineeringcourse-339017.trips_data_all.fhv_tripdata_partition_table` 
WHERE dropoff_datetime between"2019-01-01" and "2019-03-31" and dispatching_base_num in ('B00987', 'B02060', 'B02279');