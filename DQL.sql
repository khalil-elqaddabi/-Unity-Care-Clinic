-- ==== ex1 : ==== --
INSERT INTO `patients`( `patient_id`,`first_name`, `last_name`, `gender`, `date_of_birth`, `phone_number`) 
    VALUES ('21','Alex','Johnson','Male','1990-07-15','1234567890')


-- ==== ex2 : ==== --
SELECT departmemt_name , location FROM departments


-- ==== ex3 : ==== --
SELECT * FROM patients ORDER BY date_of_birth ASC ;


-- ==== ex4 : ==== --
SELECT DISTINCT gender from patients 


-- ==== ex5 : ==== --
SELECT * FROM doctors LIMIT 3	


-- ==== ex6 : ==== --
SELECT * FROM patients WHERE date_of_birth > '2000-01-01'


-- === ex7 : ==== --
SELECT *
FROM departments 
WHERE departmemt_name = 'Cardiology' 
OR departmemt_name = 'Neurology'



-- ==== ex8 : ==== --
SELECT * FROM admissions WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07';



-- ==== ex9 : ==== --
SELECT *,
CASE 
    WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 18 THEN 'Enfant'
    WHEN YEAR(CURDATE()) - YEAR(date_of_birth) <= 65 THEN 'Adulte'
    ELSE 'Senior'
END AS age_category
FROM patients;



-- ==== ex10 : ==== --
SELECT COUNT(*) AS total FROM appointments;



-- ==== ex11 : ==== --
SELECT dep.departmemt_name,COUNT(d.doctor_id) AS number_médecins 
FROM departments as dep
INNER JOIN doctors as d ON d.departmemt_id = dep.department_id 
GROUP BY dep.department_id



-- ==== ex12 : ==== --
SELECT AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) AS age_moyen
FROM patients;


-- ==== ex13 : ==== --
SELECT MAX(appointment_date) AS last_appointment
FROM appointments;



-- ==== ex14 : ==== --
SELECT room_id ,COUNT(admission_id) AS total_admissions
FROM admissions
GROUP BY room_id;



-- ==== ex15 : ==== --
SELECT * 
FROM patients
WHERE email IS NULL OR  email =''



--  ==== ex16 : ==== --
SELECT * from patients WHERE email IS null OR email = ''


-- ==== ex17 : ==== --
DELETE FROM appointments WHERE appointment_date<'2024-01-01' 


-- ==== ex18 : ==== --
UPDATE departments 
SET departmemt_name = 'Cancer Treatment' 
WHERE departmemt_name = 'Cardiology';



-- ==== ex19 : ====--
SELECT gender, COUNT(*) AS patient_count
FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2;



-- ==== ex19 : ==== --
SELECT gender, COUNT(*) AS patient_count
FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2;



-- ==== ex20 : ==== --

