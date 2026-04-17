create table customerdata.tbl_patient(
patient_id numeric not null,
patient_name_first bytea,
patient_name_last bytea,
patient_middle_initial varchar(1),
patient_dob bytea,
patient_gender bytea,
country_id numeric,
deactivation_date timestamptz,
created_by varchar(50),
created_date timestamptz Default now(),
modified_by varchar(50),
modified_date timestamptz Default current_timestamp,
gmt_created_date timestamp Default now() at time zone 'GMT',
gmt_modified_date timestamp Default current_timestamp at time zone 'GMT'
);