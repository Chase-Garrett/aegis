CREATE TYPE "dept_name" AS ENUM (
  'ER',
  'ICU',
  'Oncology',
  'Radiology',
  'OR',
  'Orthopedics',
  'Pediatrics',
  'Physchiatrics',
  'Maternity',
  'Cardiology',
  'Anesthetics',
  'Surgery',
  'Hematology',
  'HR',
  'Neurology',
  'Ophthalmology',
  'Pharmacy',
  'Urology'
);

CREATE TABLE "patient" (
  "patient_id" integer UNIQUE PRIMARY KEY,
  "Fname" varchar,
  "Minitial" char,
  "Lname" varchar,
  "Gender" char,
  "Birthdate" date,
  "email" varchar,
  "phone_no" bigint,
  "emergency_contact_no" bigint
);

CREATE TABLE "patient_visit" (
  "pv_id" integer UNIQUE PRIMARY KEY,
  "symptoms" varchar,
  "diagnosis" varchar,
  "treatmeant_plan_id" integer,
  "admittance" timestamp,
  "discharge" timestamp,
  "room_no" integer,
  "patient_id" integer,
  "staff_id" integer,
  "bill_id" integer,
  "insurance_id" integer
);

CREATE TABLE "treatment_plan" (
  "treatmeant_plan_id" integer UNIQUE PRIMARY KEY,
  "patient_visit_prescription_id" integer,
  "patient_visit_procedure_id" integer,
  "patient_visit_test_id" integer,
  "treatment_plan_dept_id" integer
);

CREATE TABLE "hospital_staff" (
  "staff_id" integer UNIQUE PRIMARY KEY,
  "Fname" varchar,
  "Minital" varchar,
  "Lname" varchar,
  "role" varchar,
  "start_date" date,
  "dept_id" integer
);

CREATE TABLE "department" (
  "dept_id" integer UNIQUE PRIMARY KEY,
  "dept_name" dept_name,
  "charge_id" integer
);

CREATE TABLE "room" (
  "room_no" integer UNIQUE PRIMARY KEY,
  "dept_id" integer
);

CREATE TABLE "insurance" (
  "insurance_id" integer UNIQUE PRIMARY KEY,
  "insurance_name" varchar,
  "coverage" decimal,
  "deductible" decimal
);

CREATE TABLE "billing" (
  "bill_id" integer UNIQUE PRIMARY KEY,
  "insurance_id" integer,
  "charge_id" integer
);

CREATE TABLE "charge" (
  "charge_id" integer UNIQUE PRIMARY KEY,
  "dept_id" integer,
  "amount" decimal
);

CREATE TABLE "tests" (
  "test_id" integer UNIQUE PRIMARY KEY,
  "test_name" varchar
);

CREATE TABLE "patient_visit_test" (
  "patient_visit_test_id" integer UNIQUE PRIMARY KEY,
  "pv_id" integer,
  "test_id" integer
);

CREATE TABLE "procedures" (
  "procedure_id" integer UNIQUE PRIMARY KEY,
  "procedure_name" varchar
);

CREATE TABLE "patient_visit_procedure" (
  "patient_visit_procedure_id" integer UNIQUE PRIMARY KEY,
  "pv_id" integer,
  "procedure_id" integer
);

CREATE TABLE "patient_visit_prescription" (
  "patient_visit_prescription_id" integer UNIQUE PRIMARY KEY,
  "pv_id" integer,
  "prescription_id" integer
);

CREATE TABLE "prescription" (
  "prescription_id" integer UNIQUE PRIMARY KEY,
  "prescription_name" varchar
);

CREATE TABLE "treatment_plan_department" (
  "treatment_plan_dept_id" integer UNIQUE PRIMARY KEY,
  "dept_id" integer
);

CREATE TABLE "patient_visit_hospital_staff" (
  "patient_visit_staff_id" integer UNIQUE PRIMARY KEY,
  "hospital_staff_id" integer,
  "pv_id" integer
);

ALTER TABLE "patient_visit" ADD FOREIGN KEY ("room_no") REFERENCES "room" ("room_no");

ALTER TABLE "patient_visit" ADD FOREIGN KEY ("patient_id") REFERENCES "patient" ("patient_id");

ALTER TABLE "patient_visit_hospital_staff" ADD FOREIGN KEY ("pv_id") REFERENCES "patient_visit" ("pv_id");

ALTER TABLE "patient_visit_hospital_staff" ADD FOREIGN KEY ("hospital_staff_id") REFERENCES "hospital_staff" ("staff_id");

ALTER TABLE "hospital_staff" ADD FOREIGN KEY ("dept_id") REFERENCES "department" ("dept_id");

ALTER TABLE "room" ADD FOREIGN KEY ("dept_id") REFERENCES "department" ("dept_id");

ALTER TABLE "patient_visit" ADD FOREIGN KEY ("bill_id") REFERENCES "billing" ("bill_id");

ALTER TABLE "billing" ADD FOREIGN KEY ("insurance_id") REFERENCES "insurance" ("insurance_id");

ALTER TABLE "patient_visit" ADD FOREIGN KEY ("insurance_id") REFERENCES "insurance" ("insurance_id");

ALTER TABLE "charge" ADD FOREIGN KEY ("dept_id") REFERENCES "department" ("dept_id");

ALTER TABLE "billing" ADD FOREIGN KEY ("charge_id") REFERENCES "charge" ("charge_id");

ALTER TABLE "patient_visit" ADD FOREIGN KEY ("treatmeant_plan_id") REFERENCES "treatment_plan" ("treatmeant_plan_id");

ALTER TABLE "treatment_plan" ADD FOREIGN KEY ("treatment_plan_dept_id") REFERENCES "treatment_plan_department" ("treatment_plan_dept_id");

ALTER TABLE "treatment_plan_department" ADD FOREIGN KEY ("dept_id") REFERENCES "department" ("dept_id");

ALTER TABLE "patient_visit_test" ADD FOREIGN KEY ("pv_id") REFERENCES "patient_visit" ("pv_id");

ALTER TABLE "patient_visit_test" ADD FOREIGN KEY ("test_id") REFERENCES "tests" ("test_id");

ALTER TABLE "treatment_plan" ADD FOREIGN KEY ("patient_visit_test_id") REFERENCES "patient_visit_test" ("patient_visit_test_id");

ALTER TABLE "patient_visit_procedure" ADD FOREIGN KEY ("procedure_id") REFERENCES "procedures" ("procedure_id");

ALTER TABLE "patient_visit_procedure" ADD FOREIGN KEY ("pv_id") REFERENCES "patient_visit" ("pv_id");

ALTER TABLE "treatment_plan" ADD FOREIGN KEY ("patient_visit_procedure_id") REFERENCES "patient_visit_procedure" ("patient_visit_procedure_id");

ALTER TABLE "patient_visit_prescription" ADD FOREIGN KEY ("pv_id") REFERENCES "patient_visit" ("pv_id");

ALTER TABLE "patient_visit_prescription" ADD FOREIGN KEY ("prescription_id") REFERENCES "prescription" ("prescription_id");

ALTER TABLE "treatment_plan" ADD FOREIGN KEY ("patient_visit_prescription_id") REFERENCES "patient_visit_prescription" ("patient_visit_prescription_id");
