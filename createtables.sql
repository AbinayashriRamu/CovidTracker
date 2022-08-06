====================================================================================================================
--patient details--
create table patient_details(
patient_name VARCHAR(20)NOT NULL,
aadhar_no NUMBER(15)NOT NULL,
street VARCHAR(30)NOT NULL,
staff_id varchar(8)NOT NULL,
centre_id NUMBER(8)not null,
pin_code number(7)NOT NULL,
blood_group VARCHAR(30)NOT NULL,
phone_no NUMBER(10)NOT NULL UNIQUE,
test_result VARCHAR(10)NOT NULL,
active_status VARCHAR(6)NOT NULL,
dead_date DATE,
CONSTRAINT a_pkA PRIMARY KEY (aadhar_no),
CONSTRAINT staff_fk_staffa foreign key (staff_id) REFERENCES centre_staff(staff_id),
CONSTRAINT fk_locationa foreign key (pin_code) REFERENCES location_table(pin_code),
CONSTRAINT fk_patient_centrea foreign key(centre_id)REFERENCES centre_details(centre_id)
);

TRUNCATE TABLE patient_details;

select*from patient_details;
commit;
DROP TABLE patient_details;


==========================================================================================================
--centre_details--auto generate--centre id--
create table centre_details(
centre_id NUMBER(8) NOT NULL,
centre_name VARCHAR(15)NOT NULL,
pin_code number(7) CONSTRAINT l_fk_location_id REFERENCES location_table(pin_code),
hospital_city varchar(30)not null,
contact_person_name VARCHAR(20)NOT NULL,
contact_person_phone_no NUMBER(10) NOT NULL UNIQUE,
Constraint c_pk PRIMARY KEY(centre_id)
);

TRUNCATE TABLE centre_details;



select* from centre_details;
DROP TABLE CENTRE_DETAILS;

===========================================================================================
--location_details--
create table location_table(
district VARCHAR(20)NOT NULL,
pin_code NUMBER(7)NOT NULL,
state_name VARCHAR(30)NOT NULL,
country VARCHAR(25)NOT NULL,
CONSTRAINT l_pk PRIMARY KEY(pin_code)
);

TRUNCATE TABLE location_table;
DROP TABLE location_table;



select*from location_table;
===================================================================================================
--patient_symptoms--
create table patient_symptoms(
aadhar_no NUMBER(15)NOT NULL CONSTRAINT a_fk_aadhar REFERENCES patient_details(aadhar_no),
symptoms_date DATE,
temperature FLOAT(5)NOT NULL,
cold VARCHAR(10)NOT NULL,
cough VARCHAR(10)NOT NULL,
smell VARCHAR(10)NOT NULL,
taste VARCHAR(10)NOT NULL
);

TRUNCATE TABLE patient_symptoms;


select*from patient_symptoms;


drop table patient_symptoms;
============================================================================================
--covid_test_result--auto generate--tst id--
create table covid_test_result(
test_id NUMBER(10)NOT NULL,
testing_date DATE,
test_result VARCHAR(10)NOT NULL,
aadhar_no NUMBER(15) CONSTRAINT a_fk REFERENCES patient_details(aadhar_no),
CONSTRAINT t_pk PRIMARY KEY(test_id));

TRUNCATE TABLE covid_test_result;

select*from covid_test_result;
drop table covid_test_result;
===============================================================================================
--patient_admit--centre id--
create table patient_admit(
aadhar_no NUMBER(15)CONSTRAINT a_fk_patient REFERENCES patient_details(aadhar_no),
centre_id NUMBER(8) CONSTRAINT c_fk_centre_ida REFERENCES centre_details(centre_id),
admit_date DATE,
admitted_by VARCHAR(10),
constraint pk_patient primary key(aadhar_no,centre_id) 
);

TRUNCATE TABLE patient_admit;


drop table patient_admit;
============================================================================================
--recovery_cases--
create table recovery_cases(
aadhar_no NUMBER(15) CONSTRAINT a_fk_aadhar1 REFERENCES patient_details(aadhar_no),
discharge_date DATE

);

TRUNCATE TABLE recovery_cases;

select*from recovery_cases;


drop table recovery_cases;
===============================================================================================
--centre_staff--centre id-autogemrate--
create table centre_staff(
centre_id NUMBER(8),
staff_name VARCHAR(20)NOT NULL,
staff_id varchar(8)NOT NULL ,
staff_role VARCHAR(10)NOT NULL,
constraint staff_patient primary key(staff_id),
CONSTRAINT c_fk_centre_det foreign key (centre_id) REFERENCES centre_details(centre_id)
);

select*from centre_staff;
drop table centre_staff;

TRUNCATE TABLE centre_staff;