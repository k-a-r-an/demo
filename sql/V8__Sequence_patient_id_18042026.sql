create sequence customerdata.tbl_patient_sequence
start with 1
increment by 1;

-------------------------------

SELECT setval(
    'customerdata.tbl_patient_sequence',
    COALESCE((SELECT MAX(patient_id) FROM customerdata.tbl_patient), 0)::BIGINT,
    true
);
-------------------------------
ALTER TABLE customerdata.tbl_patient
ALTER COLUMN patient_id
SET DEFAULT nextval('customerdata.tbl_patient_sequence');