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

INSERT INTO patient
VALUES (1, 'John', 'T', 'Doe', 'M', DATE '1992-01-12', 'johndoe@email.com', 1233211234, 3211231234);

INSERT INTO patient
VALUES (2, 'Jane', 'T', 'Doe', 'F', DATE '1994-04-07', 'janedoe@email.com', 1233211234, 3211231234);

INSERT INTO patient_visit
VALUES (1, 'fever', 'flu', 1, '2023-10-02 13:21:00', '2023-10-02 13:40:00', 1, 1, 1, 1, 1);

INSERT INTO patient_visit
VALUES (2, 'dry mouth', 'dehydration', 2, '2023-11-20 12:15:00', '2023-11-22 13:40:00', 2, 2, 1, 2, 2);

INSERT INTO hospital_staff
VALUES (1, 'Tom', 'F', 'Smith', 'Doctor', DATE '2020-02-14', 1);

INSERT INTO department
VALUES (1, 'ER', 1);

INSERT INTO department
VALUES (2, 'ER', 2);

INSERT INTO charge
VALUES (1, 1, 800);

INSERT INTO charge
VALUES (2, 1, 750);

INSERT INTO room
VALUES (1, 1);

INSERT INTO room
VALUES(2, 1);

INSERT INTO insurance
VALUES (1, 'Company A', 600, 500);

INSERT INTO insurance
VALUES (2, 'Company B', 700, 575);

INSERT INTO patient_visit_hospital_staff
VALUES (1, 1, 1);

INSERT INTO patient_visit_hospital_staff
VALUES (2, 1, 2);

INSERT INTO patient_visit_prescription
VALUES (1, 1, 1);

INSERT INTO patient_visit_prescription
VALUES (2, 2, 2);

INSERT INTO patient_visit_procedure
VALUES (1, 1, 1);

INSERT INTO patient_visit_procedure
VALUES (2, 2, 2);

INSERT INTO patient_visit_test
VALUES (1, 1, 1);

INSERT INTO patient_visit_test
VALUES (2, 2, 2);

INSERT INTO prescription
VALUES (1, 'generic medication');

INSERT INTO prescription
VALUES (2, 'name brand medication');

INSERT INTO procedures
VALUES (1, 'routine procedure');

INSERT INTO procedures
VALUES (2, 'priority procedure');

INSERT INTO tests
VALUES (1, 'routine test');

INSERT INTO tests
VALUES (2, 'priority test');

INSERT INTO treatment_plan
VALUES (1, 1, 1, 1, 1);

INSERT INTO treatment_plan
VALUES (2, 2, 2, 2, 2);

INSERT INTO treatment_plan_department
VALUES (1, 1);

INSERT INTO treatment_plan_department
VALUES (2, 1);

INSERT INTO billing
VALUES (1, 1, 1);

INSERT INTO billing
VALUES (2, 2, 2);

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
