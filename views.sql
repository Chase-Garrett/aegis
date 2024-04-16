-- patient_view for aegis_db
CREATE VIEW "patient_view" AS
SELECT
    pv.patient_id,
    pv.admittance,
    pv.discharge,
    pv.diagnosis,
    pr.procedure_name,
    ps.prescription_name,
    hs."Lname" AS staff_lastname,
    ins.coverage,
    c.amount AS billing_amount
FROM
    patient_visit pv
LEFT JOIN
    patient_visit_procedure pvp ON pv.pv_id = pvp.pv_id
LEFT JOIN
    procedures pr ON pvp.procedure_id = pr.procedure_id
LEFT JOIN
    patient_visit_prescription pvpresc ON pv.pv_id = pvpresc.pv_id
LEFT JOIN
    prescription ps ON pvpresc.prescription_id = ps.prescription_id
LEFT JOIN
    hospital_staff hs ON pv.staff_id = hs.staff_id
LEFT JOIN
    insurance ins ON pv.insurance_id = ins.insurance_id
LEFT JOIN
    billing b ON pv.bill_id = b.bill_id
LEFT JOIN
    charge c ON b.charge_id = c.charge_id;

-- med_staff_view for aegis_db
CREATE VIEW "med_staff_view" AS
SELECT
    hs.staff_id,
    pv.patient_id,
    pv.admittance,
    pv.discharge,
    pv.symptoms,
    pv.diagnosis,
    pr.procedure_name,
    ps.prescription_name,
    r.room_no
FROM patient_visit pv
LEFT JOIN
    patient_visit_procedure pvp ON pv.pv_id = pvp.pv_id
LEFT JOIN
    procedures pr ON pvp.procedure_id = pr.procedure_id
LEFT JOIN
    patient_visit_prescription pvpresc ON pv.pv_id = pvpresc.pv_id
LEFT JOIN
    prescription ps ON pvpresc.prescription_id = ps.prescription_id
LEFT JOIN
    hospital_staff hs ON pv.staff_id = hs.staff_id
LEFT JOIN
    insurance ins ON pv.insurance_id = ins.insurance_id
LEFT JOIN
    room r ON pv.room_no = r.room_no;

-- admin_view for aegis_db
CREATE VIEW "admin_view" AS
SELECT
    hs.staff_id,
    pv.patient_id,
    pv.admittance,
    pv.discharge,
    ins.coverage,
    c.amount AS billing_amount
FROM
    patient_visit pv
LEFT JOIN
    patient_visit_procedure pvp ON pv.pv_id = pvp.pv_id
LEFT JOIN
    procedures pr ON pvp.procedure_id = pr.procedure_id
LEFT JOIN
    hospital_staff hs ON pv.staff_id = hs.staff_id
LEFT JOIN
    insurance ins ON pv.insurance_id = ins.insurance_id
LEFT JOIN
    billing b ON pv.bill_id = b.bill_id
LEFT JOIN
    charge c ON b.charge_id = c.charge_id;
