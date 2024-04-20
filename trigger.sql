-- Create the trigger function
CREATE OR REPLACE FUNCTION assign_room_number()
RETURNS TRIGGER AS $$
BEGIN
    -- Declare variables to hold the selected room number
    DECLARE
        available_room INTEGER;
    BEGIN
        SELECT room_no INTO available_room
        FROM room
        WHERE dept_id = (SELECT dept_id FROM treatment_plan WHERE treatmeant_plan_id = NEW.treatmeant_plan_id)
        AND room_no NOT IN (
            SELECT room_no
            FROM patient_visit
            WHERE room_no IS NOT NULL
            AND (admittance BETWEEN NEW.admittance AND NEW.discharge OR discharge BETWEEN NEW.admittance AND NEW.discharge)
        )
        LIMIT 1;

        -- Update the patient_visit table with the selected room number
        NEW.room_no := available_room;
        RETURN NEW;
    END;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger
CREATE TRIGGER auto_assign_room
BEFORE INSERT ON patient_visit
FOR EACH ROW
EXECUTE FUNCTION assign_room_number();
