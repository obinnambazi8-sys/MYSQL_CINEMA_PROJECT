CREATE DATABASE patient_db;
USE  patient_db;
CREATE TABLE patients(patient_id INT primary key auto_increment,first_name VARCHAR(100), last_name VARCHAR(100),patient_gender VARCHAR(10), Birth_date YEAR,weight FLOAT, height FLOAT,allergies VARCHAR(100) null, city VARCHAR(100));
INSERT INTO patients(first_name,last_name,patient_gender,Birth_date,weight,height,allergies,city) VALUES ("John","Paul","M",2004,82.0,1.65,null,"Ontario"),
("Faith","Kate","F",2001,60.90,1.85,null,"Stockholm"),
("Njideka","Praise","F",2005,70.0,1.70,null,"Abuja"),
("Obinna","James","M",1998,69.1,1.70,null,"Lagos"),
("Sonia","Brooklyn","F",1999,70.9,1.55,null,"London"),
("Diego","Fernandez","M",2000,72.0,1.70,null,"Bogota"),
("Tunde", "Adebayo", "M", 1997, 80.2, 1.81, null, "Ibadan"),
("Zainab", "Abdullahi", "F", 2000, 66.1, 1.65, null, "Kaduna"),
("Isabella", "Carter", "F", 2002, 62.0, 1.66, null, "Buenos Aires"),
("Noah", "Kim", "M", 1999, 76.3, 1.76, null, "Seoul"),
("Liam", "O'Connor", "M", 1995, 85.0, 1.83, null, "Dublin"),
("Kwame", "Mensah", "M", 1998, 72.8, 1.73, null, "Accra"),
("Chloe", "Dubois", "F", 1999, 58.7, 1.61, null, "Paris"),
("Ananya", "Reddy", "F", 2002, 53.6, 1.57, null, "Hyderabad"),
("Oliver", "Brown", "M", 2001, 75.0, 1.78, null, "Manchester"),
("Sara", "Ibrahim", "F", 1998, 60.5, 1.64, "Cats", "Amman"),
("Leila", "Nasser", "F", 2004, 57.3, 1.63, null, "Beirut"),
("Lucas", "Silva", "M", 2000, 79.6, 1.77, null, "São Paulo"),
("Jamal", "Williams", "M", 1998, 83.7, 1.82, null, "Atlanta"),
("Maya", "Patel", "F", 2005, 54.9, 1.59, null, "Ahmedabad"),
("Nathan", "Brooks", "M", 1996, 75.8, 1.76, null, "Melbourne"),
("Jack", "Wilson", "M", 1998, 77.6, 1.77, null, "Vancouver"),
("Grace", "Okafor", "F", 2000, 64.7, 1.68, null, "Onitsha"),
("Amina", "Yusuf", "F", 2003, 59.2, 1.63, null, "Jos"),
("Victoria", "Adams", "F", 1999, 65.8, 1.70, null, "New York"),
("Ximena", "Ruiz", "F", 2004, 54.6, 1.61, null, "Lima");
SELECT * FROM patients WHERE patient_gender = 'M';
SELECT first_name,last_name FROM patients WHERE allergies IS NULL;
SELECT first_name, last_name, patient_gender FROM patients WHERE patient_gender = 'M';
SELECT * FROM patients WHERE first_name LIKE 'C%';
SELECT * FROM patients WHERE last_name LIKE 'C%';
SELECT first_name,last_name FROM patients WHERE weight BETWEEN 100 AND 120;
UPDATE patients SET allergies ='NKA' WHERE allergies IS NULL; 
SELECT *, concat(first_name," ",last_name) as FullName FROM patients;
SELECT COUNT(*) FROM patients WHERE Birth_date =2010;
SELECT first_name,last_name,height FROM patients WHERE height =(SELECT MAX(height) FROM patients);
ALTER TABLE patients ADD COLUMN province_id VARCHAR(10);
INSERT INTO patients(first_name,last_name,patient_gender,Birth_date,weight,height,allergies,city,province_id) VALUES ("Jokic","Mark","M",2003,89.0,1.65,null,"Ontario",'NS');
SELECT city FROM patients WHERE province_id = 'NS';
SELECT first_name,last_name, birth_date FROM patients WHERE height > 1.60 AND weight > 70;
SELECT city FROM patients WHERE city LIKE 'A%' OR city LIKE 'E%' OR city LIKE 'I%' OR city LIKE 'O%' OR city LIKE 'U%' ORDER BY city ASC;

USE patient_db;
CREATE TABLE admissions(admission_id INT primary key auto_increment,patient_id INT,admission_date DATE,discharge_date DATE);
INSERT INTO admissions(patient_id,admission_date,discharge_date) VALUES(1,"2026-07-11","2026-08-12"),
(2, '2026-01-05', '2026-01-08'),
(3, '2026-01-07', '2026-01-10'),
(4, '2026-01-09', '2026-01-12'),
(5, '2026-01-11', '2026-01-15'),
(6, '2026-01-13', '2026-01-16'),
(7, '2026-01-15', '2026-01-20'),
(8, '2026-01-17', '2026-01-19'),
(9, '2026-01-19', '2026-01-23'),
(10, '2026-01-21', '2026-01-25'),
(11, '2026-01-23', '2026-01-27'),
(12, '2026-01-25', '2026-01-29'),
(13, '2026-01-27', '2026-01-30'),
(14, '2026-01-29', '2026-02-02'),
(15, '2026-01-31', '2026-02-04'),
(16, '2026-02-02', '2026-02-06'),
(17, '2026-02-04', '2026-02-08'),
(18, '2026-02-06', '2026-02-09'),
(19, '2026-02-08', '2026-02-12'),
(20, '2026-02-10', '2026-02-14'),
(21, '2026-02-12', '2026-02-16'),
(22, '2026-02-14', '2026-02-18'),
(23, '2026-02-16', '2026-02-20'),
(24, '2026-02-18', '2026-02-22'),
(25, '2026-02-20', '2026-02-24'),
(26, '2026-02-22', '2026-02-26'),
(27, '2026-02-24', '2026-02-28'),
(28, '2026-02-26', '2026-03-02'),
(29, '2026-02-28', '2026-03-04'),
(30, '2026-03-02', '2026-03-06'),
(31, '2026-03-04', '2026-03-08'),
(32, '2026-03-06', '2026-03-10'),
(33, '2026-03-08', '2026-03-12'),
(34, '2026-03-10', '2026-03-14'),
(35, '2026-03-12', '2026-03-16'),
(36, '2026-03-14', '2026-03-18'),
(37, '2026-03-16', '2026-03-20'),
(38, '2026-03-18', '2026-03-22'),
(39, '2026-03-20', '2026-03-24'),
(40, '2026-03-22', '2026-03-26'),
(41, '2026-03-24', '2026-03-28'),
(42, '2026-03-26', '2026-03-30'),
(43, '2026-03-28', '2026-04-01'),
(44, '2026-03-30', '2026-04-03'),
(45, '2026-04-01', '2026-04-05'),
(46, '2026-04-03', '2026-04-07'),
(47, '2026-04-05', '2026-04-09'),
(48, '2026-04-07', '2026-04-11'),
(49, '2026-04-09', '2026-04-13'),
(50, '2026-04-11', '2026-04-15'),
(51, '2026-04-13', '2026-04-17'),
SELECT COUNT(*) AS total_admissions FROM admissions;
SELECT * FROM admissions WHERE admission_date =discharge_date;

