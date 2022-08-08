create table user_login(
pass_word VARCHAR(8)NOT NULL,
e_mail VARCHAR(30)NOT NULL ,
last_Date_of_password_changed Date ,
date_of_registration date,
last_password varchar(8),
CONSTRAINT a_pkA_mail PRIMARY KEY (e_mail) 
);
drop table user_login;

insert into user_login values('abi123','abi@gmail.com','25-09-2022','07-082022','abi99');

create table patient_details(
patient_name VARCHAR(20)NOT NULL,
aadhar_no NUMBER(15)NOT NULL,
street VARCHAR(30)NOT NULL,
pin_code number(7)NOT NULL CONSTRAINT fk_locationa REFERENCES location_table(pin_code),
blood_group VARCHAR(30)NOT NULL,
phone_no NUMBER(10)NOT NULL ,
last_test_id number(10),
active_status VARCHAR(6)NOT NULL,
dead_date DATE,
CONSTRAINT a_pkA PRIMARY KEY (aadhar_no));
select*from patient_details;
commit;
insert into patient_details values('abishri',989876675445,'KK street',641654,'A positive',9842247545,null,'alive',null);

drop table patient_details;

create table centre_details(
centre_id NUMBER(8) NOT NULL,
centre_name VARCHAR(15)NOT NULL,
pin_code number(7) CONSTRAINT l_fk_location_id REFERENCES location_table(pin_code),
contact_person_name VARCHAR(20)NOT NULL,
contact_person_phone_no NUMBER(10) NOT NULL UNIQUE,
Constraint c_pk PRIMARY KEY(centre_id)
);
insert into centre_details values(201,'GH',641654,'Shanthi',9876543210);

drop table centre_details;

create table location_table(
pin_code NUMBER(7)NOT NULL,
district VARCHAR(20)NOT NULL,
state_name VARCHAR(30)NOT NULL,
country VARCHAR(25)NOT NULL,
CONSTRAINT l_pk PRIMARY KEY(pin_code)
);
drop table location_table;

insert into location_table values(641654,'Thirupur','Tamilnadu','India');
commit

create table patient_symptoms(
aadhar_no NUMBER(15)NOT NULL CONSTRAINT a_fk_aadhar REFERENCES patient_details(aadhar_no),
observation_date DATE,
observation_id number(10),
observated_by varchar(10),
temperature FLOAT(5)NOT NULL,
cold VARCHAR(10)NOT NULL,
cough VARCHAR(10)NOT NULL,
smell VARCHAR(10)NOT NULL,
taste VARCHAR(10)NOT NULL,
CONSTRAINT l_pk_obser PRIMARY KEY(observation_id)
);
insert into patient_symptoms values(989876675445,'04-04-2022',109,'nurse',100.1,'yes','yes','yes','no');

drop table patient_symptoms;

create table covid_test_result(
test_id NUMBER(10)NOT NULL,
testing_date DATE not null,
test_result VARCHAR(10)NOT NULL,
aadhar_no NUMBER(15) CONSTRAINT a_fk REFERENCES patient_details(aadhar_no),
test_by varchar(10)not null,
CONSTRAINT t_pk PRIMARY KEY(test_id)
);


insert into covid_test_result values(1009,'06-04-2022','positive',989876675445,'nurse');

drop table covid_test_result;
select*from covid_test_result;

create table patient_admit(
aadhar_no NUMBER(15)CONSTRAINT a_fk_patient REFERENCES patient_details(aadhar_no),
centre_id NUMBER(8) CONSTRAINT c_fk_centre_ida REFERENCES centre_details(centre_id),
admit_date DATE,
discharge_date date,
admit_id number(10),
staff_id number(10)CONSTRAINT a_fkab_patient REFERENCES centre_staff(staff_id),
constraint admit_pk primary key(admit_id) 
);

drop table patint_admit;

insert into patient_admit values(989876675445,201,'12-05-2022',null,203,20101);

create table centre_staff(
centre_id NUMBER(8)not null,
staff_name VARCHAR(20)NOT NULL,
staff_id number(8)NOT NULL ,
staff_role VARCHAR(10)NOT NULL,
staff_gender varchar (15) not null,
staff_date_of_birth date,
constraint staff_patient primary key(staff_id),
CONSTRAINT c_fk_centre_det foreign key (centre_id) REFERENCES centre_details(centre_id)
);
drop table centre_staff;

insert into centre_staff values(201,'Deepi','20101','nurse','female','09-09-1990');
