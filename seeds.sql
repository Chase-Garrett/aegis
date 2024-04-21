-- insert testing data to aegis_db

ALTER TABLE patient_visit_hospital_staff DISABLE TRIGGER ALL;
ALTER TABLE patient_visit_prescription DISABLE TRIGGER ALL;
ALTER TABLE patient_visit_procedure DISABLE TRIGGER ALL;
ALTER TABLE patient_visit_test DISABLE TRIGGER ALL;
ALTER TABLE billing DISABLE TRIGGER ALL;
ALTER TABLE charge DISABLE TRIGGER ALL;
ALTER TABLE department DISABLE TRIGGER ALL;
ALTER TABLE insurance DISABLE TRIGGER ALL;
ALTER TABLE hospital_staff DISABLE TRIGGER ALL;
ALTER TABLE patient_visit DISABLE TRIGGER ALL;
ALTER TABLE prescription DISABLE TRIGGER ALL;
ALTER TABLE procedures DISABLE TRIGGER ALL;
ALTER TABLE tests DISABLE TRIGGER ALL;
ALTER TABLE treatment_plan DISABLE TRIGGER ALL;
ALTER TABLE treatment_plan_department DISABLE TRIGGER ALL;
ALTER TABLE room DISABLE TRIGGER ALL;
ALTER TABLE patient DISABLE TRIGGER ALL;

-- patient table
INSERT INTO patient
VALUES (1, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (2, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (3, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (4, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (5, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (6, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (7, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (8, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (9, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (10, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (11, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (12, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (13, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (14, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (15, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

-- patient visit table
INSERT INTO patient_visit
VALUES (1, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 1, 1, 1, 1, 1);

INSERT INTO patient_visit
VALUES (2, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 2, 2, 1, 2, 2);

INSERT INTO patient_visit
VALUES (3, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 3, 3, 1, 3, 3);

INSERT INTO patient_visit
VALUES (4, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 4, 4, 2, 4, 4);

INSERT INTO patient_visit
VALUES (5, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 5, 5, 2, 5, 5);

INSERT INTO patient_visit
VALUES (6, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 6, 6, 2, 6, 6);

INSERT INTO patient_visit
VALUES (7, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 7, 7, 3, 7, 7);

INSERT INTO patient_visit
VALUES (8, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 8, 8, 3, 8, 8);

INSERT INTO patient_visit
VALUES (9, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 9, 9, 3, 9, 9);

INSERT INTO patient_visit
VALUES (10, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 10, 10, 4, 10, 10);

INSERT INTO patient_visit
VALUES (11, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 11, 11, 4, 11, 11);

INSERT INTO patient_visit
VALUES (12, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 12, 12, 4, 12, 12);

INSERT INTO patient_visit
VALUES (13, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 13, 13, 5, 13, 13);

INSERT INTO patient_visit
VALUES (14, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 14, 14, 5, 14, 14);

INSERT INTO patient_visit
VALUES (15, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 15, 15, 5, 15, 15);

-- hospital staff table
INSERT INTO hospital_staff
VALUES (1, 'Tom', 'F', 'Smith', 'Doctor', DATE '2020-02-14', 1);

INSERT INTO hospital_staff
VALUES (2, 'Jim', 'T', 'Grimes', 'Doctor', DATE '2020-02-14', 3);

INSERT INTO hospital_staff
VALUES (3, 'Joe', 'B', 'Martin', 'Doctor', DATE '2020-02-14', 4);

INSERT INTO hospital_staff
VALUES (4, 'Sonny', 'J', 'Roberts', 'Doctor', DATE '2020-02-14', 5);

INSERT INTO hospital_staff
VALUES (5, 'Bob', 'H', 'Carson', 'Doctor', DATE '2020-02-14', 6);

-- department table
INSERT INTO department
VALUES (1, 'ER', 1);

INSERT INTO department
VALUES (2, 'ER', 2);

INSERT INTO department
VALUES (3, 'ICU', 3);

INSERT INTO department
VALUES (4, 'Orthopedic', 4);

INSERT INTO department
VALUES (5, 'Neurology', 5);

INSERT INTO department
VALUES (6, 'Ophthamology', 6);

INSERT INTO department
VALUES (7, 'Urology', 7);

INSERT INTO department
VALUES (8, 'Cardiology', 8);

INSERT INTO department
VALUES (9, 'Surgery', 9);

INSERT INTO department
VALUES (10, 'Radiology', 10);

INSERT INTO department
VALUES (11, 'Maternity', 11);

INSERT INTO department
VALUES (12, 'Hematology', 12);

INSERT INTO department
VALUES (13, 'Physchiatrics', 13);

INSERT INTO department
VALUES (14, 'Pharmacy', 14);

INSERT INTO department
VALUES (15, 'Anesthetics', 15);

-- charge table
INSERT INTO charge
VALUES (1, 1, 800);

INSERT INTO charge
VALUES (2, 2, 750);

INSERT INTO charge
VALUES (3, 3, 800);

INSERT INTO charge
VALUES (4, 4, 750);

INSERT INTO charge
VALUES (5, 5, 800);

INSERT INTO charge
VALUES (6, 6, 750);

INSERT INTO charge
VALUES (7, 7, 800);

INSERT INTO charge
VALUES (8, 8, 750);

INSERT INTO charge
VALUES (9, 9, 800);

INSERT INTO charge
VALUES (10, 10, 750);

INSERT INTO charge
VALUES (11, 11, 800);

INSERT INTO charge
VALUES (12, 12, 750);

INSERT INTO charge
VALUES (13, 13, 800);

INSERT INTO charge
VALUES (14, 14, 750);

INSERT INTO charge
VALUES (15, 15, 750);

-- room table
INSERT INTO room
VALUES (1, 1);

INSERT INTO room
VALUES(2, 2);

INSERT INTO room
VALUES (3, 3);

INSERT INTO room
VALUES(4, 4);

INSERT INTO room
VALUES (5, 5);

INSERT INTO room
VALUES(6, 6);

INSERT INTO room
VALUES (7, 7);

INSERT INTO room
VALUES(8, 8);

INSERT INTO room
VALUES (9, 9);

INSERT INTO room
VALUES(10, 10);

INSERT INTO room
VALUES (11, 11);

INSERT INTO room
VALUES(12, 12);

INSERT INTO room
VALUES (13, 13);

INSERT INTO room
VALUES(14, 14);

INSERT INTO room
VALUES (15, 15);

-- insurance table
INSERT INTO insurance
VALUES (1, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (2, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (3, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (4, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (5, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (6, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (7, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (8, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (9, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (10, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (11, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (12, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (13, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (14, 'Company B', 700, 575);

INSERT INTO insurance
VALUES (15, 'Company A', 600, 500);

-- patient visit hospital staff table
INSERT INTO patient_visit_hospital_staff
VALUES (1, 1, 1);

INSERT INTO patient_visit_hospital_staff
VALUES (2, 1, 2);

INSERT INTO patient_visit_hospital_staff
VALUES (3, 1, 3);

INSERT INTO patient_visit_hospital_staff
VALUES (4, 2, 4);

INSERT INTO patient_visit_hospital_staff
VALUES (5, 2, 5);

INSERT INTO patient_visit_hospital_staff
VALUES (6, 2, 6);

INSERT INTO patient_visit_hospital_staff
VALUES (7, 3, 7);

INSERT INTO patient_visit_hospital_staff
VALUES (8, 3, 8);

INSERT INTO patient_visit_hospital_staff
VALUES (9, 3, 9);

INSERT INTO patient_visit_hospital_staff
VALUES (10, 4, 10);

INSERT INTO patient_visit_hospital_staff
VALUES (11, 4, 11);

INSERT INTO patient_visit_hospital_staff
VALUES (12, 4, 12);

INSERT INTO patient_visit_hospital_staff
VALUES (13, 5, 13);

INSERT INTO patient_visit_hospital_staff
VALUES (14, 5, 14);

INSERT INTO patient_visit_hospital_staff
VALUES (15, 5, 15);

-- patient visit prescription table
INSERT INTO patient_visit_prescription
VALUES (1, 1, 1);

INSERT INTO patient_visit_prescription
VALUES (2, 2, 2);

INSERT INTO patient_visit_prescription
VALUES (3, 3, 3);

INSERT INTO patient_visit_prescription
VALUES (4, 4, 4);

INSERT INTO patient_visit_prescription
VALUES (5, 5, 5);

INSERT INTO patient_visit_prescription
VALUES (6, 6, 6);

INSERT INTO patient_visit_prescription
VALUES (7, 7, 7);

INSERT INTO patient_visit_prescription
VALUES (8, 8, 8);

INSERT INTO patient_visit_prescription
VALUES (9, 9, 9);

INSERT INTO patient_visit_prescription
VALUES (10, 10, 10);

INSERT INTO patient_visit_prescription
VALUES (11, 11, 11);

INSERT INTO patient_visit_prescription
VALUES (12, 12, 12);

INSERT INTO patient_visit_prescription
VALUES (13, 13, 13);

INSERT INTO patient_visit_prescription
VALUES (14, 14, 14);

INSERT INTO patient_visit_prescription
VALUES (15, 15, 15);

-- patient visit procedure table
INSERT INTO patient_visit_procedure
VALUES (1, 1, 1);

INSERT INTO patient_visit_procedure
VALUES (2, 2, 2);

INSERT INTO patient_visit_procedure
VALUES (3, 3, 3);

INSERT INTO patient_visit_procedure
VALUES (4, 4, 4);

INSERT INTO patient_visit_procedure
VALUES (5, 5, 5);

INSERT INTO patient_visit_procedure
VALUES (6, 6, 6);

INSERT INTO patient_visit_procedure
VALUES (7, 7, 7);

INSERT INTO patient_visit_procedure
VALUES (8, 8, 8);

INSERT INTO patient_visit_procedure
VALUES (9, 9, 9);

INSERT INTO patient_visit_procedure
VALUES (10, 10, 10);

INSERT INTO patient_visit_procedure
VALUES (11, 11, 11);

INSERT INTO patient_visit_procedure
VALUES (12, 12, 12);

INSERT INTO patient_visit_procedure
VALUES (13, 13, 13);

INSERT INTO patient_visit_procedure
VALUES (14, 14, 14);

INSERT INTO patient_visit_procedure
VALUES (15, 15, 15);

-- patient visit test table
INSERT INTO patient_visit_test
VALUES (1, 1, 1);

INSERT INTO patient_visit_test
VALUES (2, 2, 2);

INSERT INTO patient_visit_test
VALUES (3, 3, 3);

INSERT INTO patient_visit_test
VALUES (4, 4, 4);

INSERT INTO patient_visit_test
VALUES (5, 5, 5);

INSERT INTO patient_visit_test
VALUES (6, 6, 6);

INSERT INTO patient_visit_test
VALUES (7, 7, 7);

INSERT INTO patient_visit_test
VALUES (8, 8, 8);

INSERT INTO patient_visit_test
VALUES (9, 9, 9);

INSERT INTO patient_visit_test
VALUES (10, 10, 10);

INSERT INTO patient_visit_test
VALUES (11, 11, 11);

INSERT INTO patient_visit_test
VALUES (12, 12, 12);

INSERT INTO patient_visit_test
VALUES (13, 13, 13);

INSERT INTO patient_visit_test
VALUES (14, 14, 14);

INSERT INTO patient_visit_test
VALUES (15, 15, 15);

-- prescription table
INSERT INTO prescription
VALUES (1, 'generic medication');

INSERT INTO prescription
VALUES (2, 'name brand medication');

INSERT INTO prescription
VALUES (3, 'generic medication');

INSERT INTO prescription
VALUES (4, 'name brand medication');

INSERT INTO prescription
VALUES (5, 'generic medication');

INSERT INTO prescription
VALUES (6, 'name brand medication');

INSERT INTO prescription
VALUES (7, 'generic medication');

INSERT INTO prescription
VALUES (8, 'name brand medication');

INSERT INTO prescription
VALUES (9, 'generic medication');

INSERT INTO prescription
VALUES (10, 'name brand medication');

INSERT INTO prescription
VALUES (11, 'generic medication');

INSERT INTO prescription
VALUES (12, 'name brand medication');

INSERT INTO prescription
VALUES (13, 'generic medication');

INSERT INTO prescription
VALUES (14, 'name brand medication');

INSERT INTO prescription
VALUES (15, 'generic medication');

-- procedures table
INSERT INTO procedures
VALUES (1, 'routine procedure');

INSERT INTO procedures
VALUES (2, 'priority procedure');

INSERT INTO procedures
VALUES (3, 'routine procedure');

INSERT INTO procedures
VALUES (4, 'priority procedure');

INSERT INTO procedures
VALUES (5, 'routine procedure');

INSERT INTO procedures
VALUES (6, 'priority procedure');

INSERT INTO procedures
VALUES (7, 'routine procedure');

INSERT INTO procedures
VALUES (8, 'priority procedure');

INSERT INTO procedures
VALUES (9, 'routine procedure');

INSERT INTO procedures
VALUES (10, 'priority procedure');

INSERT INTO procedures
VALUES (11, 'routine procedure');

INSERT INTO procedures
VALUES (12, 'priority procedure');

INSERT INTO procedures
VALUES (13, 'routine procedure');

INSERT INTO procedures
VALUES (14, 'priority procedure');

INSERT INTO procedures
VALUES (15, 'routine procedure');

-- tests table
INSERT INTO tests
VALUES (1, 'routine test');

INSERT INTO tests
VALUES (2, 'priority test');

INSERT INTO tests
VALUES (3, 'routine test');

INSERT INTO tests
VALUES (4, 'priority test');

INSERT INTO tests
VALUES (5, 'routine test');

INSERT INTO tests
VALUES (6, 'priority test');

INSERT INTO tests
VALUES (7, 'priority test');

INSERT INTO tests
VALUES (8, 'routine test');

INSERT INTO tests
VALUES (9, 'priority test');

INSERT INTO tests
VALUES (10, 'routine test');

INSERT INTO tests
VALUES (11, 'routine test');

INSERT INTO tests
VALUES (12, 'priority test');

INSERT INTO tests
VALUES (13, 'routine test');

INSERT INTO tests
VALUES (14, 'priority test');

INSERT INTO tests
VALUES (15, 'routine test');

-- treatment plan table
INSERT INTO treatment_plan
VALUES (1, 1, 1, 1, 1);

INSERT INTO treatment_plan
VALUES (2, 2, 2, 2, 2);

INSERT INTO treatment_plan
VALUES (3, 3, 3, 3, 3);

INSERT INTO treatment_plan
VALUES (4, 4, 4, 4, 4);

INSERT INTO treatment_plan
VALUES (5, 5, 5, 5, 5);

INSERT INTO treatment_plan
VALUES (6, 6, 6, 6, 6);

INSERT INTO treatment_plan
VALUES (7, 7, 7, 7, 7);

INSERT INTO treatment_plan
VALUES (8, 8, 8, 8, 8);

INSERT INTO treatment_plan
VALUES (9, 9, 9, 9, 9);

INSERT INTO treatment_plan
VALUES (10, 10, 10, 10, 10);

INSERT INTO treatment_plan
VALUES (11, 11, 11, 11, 11);

INSERT INTO treatment_plan
VALUES (12, 12, 12, 12, 12);

INSERT INTO treatment_plan
VALUES (13, 13, 13, 13, 13);

INSERT INTO treatment_plan
VALUES (14, 14, 14, 14, 14);

INSERT INTO treatment_plan
VALUES (15, 15, 15, 15, 15);

-- treatment plan department table
INSERT INTO treatment_plan_department
VALUES (1, 1);

INSERT INTO treatment_plan_department
VALUES (2, 2);

INSERT INTO treatment_plan_department
VALUES (3, 3);

INSERT INTO treatment_plan_department
VALUES (4, 4);

INSERT INTO treatment_plan_department
VALUES (5, 5);

INSERT INTO treatment_plan_department
VALUES (6, 6);

INSERT INTO treatment_plan_department
VALUES (7, 7);

INSERT INTO treatment_plan_department
VALUES (8, 8);

INSERT INTO treatment_plan_department
VALUES (9, 9);

INSERT INTO treatment_plan_department
VALUES (10, 10);

INSERT INTO treatment_plan_department
VALUES (11, 11);

INSERT INTO treatment_plan_department
VALUES (12, 12);

INSERT INTO treatment_plan_department
VALUES (13, 13);

INSERT INTO treatment_plan_department
VALUES (14, 14);

INSERT INTO treatment_plan_department
VALUES (15, 15);

-- billing table
INSERT INTO billing
VALUES (1, 1, 1);

INSERT INTO billing
VALUES (2, 2, 2);

INSERT INTO billing
VALUES (3, 3, 3);

INSERT INTO billing
VALUES (4, 4, 4);

INSERT INTO billing
VALUES (5, 5, 5);

INSERT INTO billing
VALUES (6, 6, 6);

INSERT INTO billing
VALUES (7, 7, 7);

INSERT INTO billing
VALUES (8, 8, 8);

INSERT INTO billing
VALUES (9, 9, 9);

INSERT INTO billing
VALUES (10, 10, 10);

INSERT INTO billing
VALUES (11, 11, 11);

INSERT INTO billing
VALUES (12, 12, 12);

INSERT INTO billing
VALUES (13, 13, 13);

INSERT INTO billing
VALUES (14, 14, 14);

INSERT INTO billing
VALUES (15, 15, 15);

ALTER TABLE patient_visit_hospital_staff ENABLE TRIGGER ALL;
ALTER TABLE patient_visit_prescription ENABLE TRIGGER ALL;
ALTER TABLE patient_visit_procedure ENABLE TRIGGER ALL;
ALTER TABLE patient_visit_test ENABLE TRIGGER ALL;
ALTER TABLE billing ENABLE TRIGGER ALL;
ALTER TABLE charge ENABLE TRIGGER ALL;
ALTER TABLE department ENABLE TRIGGER ALL;
ALTER TABLE insurance ENABLE TRIGGER ALL;
ALTER TABLE hospital_staff ENABLE TRIGGER ALL;
ALTER TABLE patient_visit ENABLE TRIGGER ALL;
ALTER TABLE prescription ENABLE TRIGGER ALL;
ALTER TABLE procedures ENABLE TRIGGER ALL;
ALTER TABLE tests ENABLE TRIGGER ALL;
ALTER TABLE treatment_plan ENABLE TRIGGER ALL;
ALTER TABLE treatment_plan_department ENABLE TRIGGER ALL;
ALTER TABLE room ENABLE TRIGGER ALL;
ALTER TABLE patient ENABLE TRIGGER ALL;
