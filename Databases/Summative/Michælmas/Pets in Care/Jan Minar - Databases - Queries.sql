-- 'Jan Minar - Databases - Queries.sql' -- SQL Queries for "Pets in Care"
--
-- Copyright © 2009-2010 Jan Minář <rdancer@rdancer.org>
-- 
-- This work is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License version 2 (two),
-- as published by the Free Software Foundation.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License along
-- with this program; if not, write to the Free Software Foundation, Inc.,
-- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-- 
--
-- These queries are for the summative assignment in Computer Systems
-- (Databases), Michaelmas 2010

-- The assignment is quoted verbatim below.
--
-- "1. Listing the Manager’s name, clinic address, and telephone number for
-- each clinic, ordered by clinic number. [3 marks]"

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name', CONCAT(p.line_1, ', ', IFNULL(p.line_2,''), ', ', p.city, ', ', p.county, ', ', p.zip, ', ', cc.english_name) AS 'Postal Address', e.phone_number AS 'Phone Number' FROM clinics AS c JOIN employees AS e ON c.id = e.clinic_id JOIN postal_addresses as p ON c.postal_address_id = p.id JOIN countries as cc ON cc.iso_code = p.country WHERE e.job_position_id = (SELECT id FROM job_positions WHERE name = 'Manager') ORDER BY c.id_public;

-- "2. List the names and owner numbers of pet owners and the details of their
-- pets [3 marks]"

SELECT CONCAT(o.first_name, " ", o.last_name) AS 'Owner Name', o.id_public AS 'Owner Number', p.name AS 'Pet Name', (SELECT pet_types.name from pet_types WHERE pet_types.id = p.pet_type_id) AS 'Pet Type', CASE p.sex WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' ELSE 'Unknown' END AS 'Pet Sex', DATE(p.date_of_birth) AS 'Date of Birth', DATE(p.registered_since) AS 'Registration Date', (CASE p.is_alive WHEN 1 THEN 'Alive' ELSE 'Dead' END) AS 'Alive', IFNULL(CASE p.neutered WHEN 1 THEN 'Neutered' WHEN 0 THEN 'n/a' END, 'Unknown') AS 'Neutered', IFNULL(p.note, '') AS 'Note' FROM owners AS o JOIN pets AS p ON p.owner_id = o.id ORDER BY o.id LIMIT 10;

-- "3. What is the total monthly salary for staff at each clinic, ordered by
-- clinic number.[5 marks]"

SELECT clinics.id AS 'Clinic Number', clinics.id_public AS 'City', ROUND(SUM(employees.annual_salary) / 12 / 100, 2) AS 'Monthly Salary Total [GBP]' FROM clinics JOIN employees ON clinics.id = employees.clinic_id GROUP BY clinics.id;


-- "4. List the names and staff numbers for all vets and nurses over 50 years
-- old, ordered by staff name.  [5 marks]"

SELECT CONCAT(first_name, ' ', last_name) AS 'Staff Name', employee_number AS 'Staff Number' FROM employees WHERE date_of_birth <=  DATE_SUB(CURDATE(), INTERVAL 50 YEAR);


-- "5. List the maximum, minimum, and average cost for treatments [8 marks]"

-- Note: This is a report on the list prices, not the actual treatments
--       performed.

SELECT (SELECT ROUND(MAX(price) / 100, 2) FROM treatment_types) AS 'Maximum Treatment Cost', (SELECT ROUND(MIN(price) / 100, 2) FROM treatment_types) AS 'Minimum Treatment Cost', (SELECT ROUND(AVG(price) / 100, 2) FROM treatment_types) AS 'Average Treatment Cost';

-- "6. What is the revenue for the practice generated from feline hysterectomy
-- operations during November 2010 [8 marks]"

SELECT ROUND(SUM(treatment_types.price) / 100, 2) AS 'Feline Hysterectomy Revenue -- November 2010' FROM treatment_types JOIN treatments ON treatment_types.id = treatments.treatment_type_id WHERE treatment_types.name = 'Feline hysterectomy' AND treatments.start_actual >= '2010-11-01' AND treatments.start_actual < '2010-12-01';

-- "7. List the total number of pets registered with the practice in each pet
-- type, ordered by pet type. [8 marks]"

SELECT pet_types.name as 'Pet Type', COUNT(*) AS 'Registered Pets' FROM pet_types JOIN pets ON pet_types.id = pets.pet_type_id GROUP BY pet_types.id ORDER BY pet_types.name;
