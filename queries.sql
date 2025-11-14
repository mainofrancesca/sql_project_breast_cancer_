-- Breast Cancer SQL Project
-- Created: Nov 2025
-- Dataset: breast_cancer
-- Description: Statistical and clinical analysis of the dataset
-- ===============================================================


-- 1. Total number of patients
-- Counts all patients in the dataset
SELECT COUNT(*) AS total_patients
FROM breast_cancer;

-- 2. Average, minimum, and maximum age of patients
-- Computes average, youngest, and oldest patient ages
SELECT 
    ROUND(AVG(Age)) AS avg_age,
    MIN(Age) AS min_age,
    MAX(Age) AS max_age
FROM breast_cancer;

-- 3. Distribution of patients by marital status
-- Counts patients grouped by marital status (Single, Married, etc.)
SELECT Marital_Status, COUNT(*) AS count
FROM breast_cancer
GROUP BY Marital_Status
ORDER BY count DESC;

-- 4. Average age of Single vs Married patients
-- Compares the average age between Single and Married patients
SELECT Marital_Status, ROUND(AVG(Age)) AS avg_age
FROM breast_cancer
GROUP BY Marital_Status
ORDER BY avg_age DESC;

-- 5. Distribution of patients by race
-- Counts patients grouped by Race
SELECT Race, COUNT(*) AS count
FROM breast_cancer
GROUP BY Race
ORDER BY count DESC;

-- 6. Number of patients by tumor Grade
-- Counts patients grouped by tumor Grade
SELECT Grade, COUNT(*) AS count
FROM breast_cancer
GROUP BY Grade
ORDER BY Grade;

-- 7. Distribution of patients by T_Stage
-- Counts patients grouped by tumor T stage
SELECT T_Stage, COUNT(*) AS count
FROM breast_cancer
GROUP BY T_Stage
ORDER BY T_Stage;

-- 8. Percentage of estrogen/progesterone positive patients by T_Stage
-- Computes % of patients positive for estrogen/progesterone receptors per T_Stage
SELECT 
    T_Stage, 
    ROUND(SUM(CASE WHEN Estrogen_Status='Positive' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS estrogen_positive_percentage,
    ROUND(SUM(CASE WHEN Progesterone_Status='Positive' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS progesterone_positive_percentage
FROM breast_cancer
GROUP BY T_Stage
ORDER BY T_Stage;

-- 9. Number of patients by combination of T_Stage and N_Stage
-- Counts patients for each combination of T stage and N stage
SELECT T_Stage, N_Stage, COUNT(*) AS count
FROM breast_cancer
GROUP BY T_Stage, N_Stage
ORDER BY T_Stage, N_Stage;

-- 10. Average age for each combination of Grade and 6th_Stage
-- Computes average age of patients for each Grade and 6th AJCC stage combination
SELECT Grade, `6th_Stage`, ROUND(AVG(Age)) AS avg_age
FROM breast_cancer
GROUP BY Grade, `6th_Stage`
ORDER BY `6th_Stage`, Grade;

-- 11. Average tumor size by Grade
-- Computes average tumor size for each tumor Grade
SELECT Grade, AVG(Tumor_Size) AS avg_tumor_size
FROM breast_cancer
GROUP BY Grade
ORDER BY Grade;

-- 12. Average survival in years and months of patients
-- Computes average survival time in years and months for all patients
SELECT 
    FLOOR(AVG(Survival_Months)/12) AS years,
    ROUND(MOD(AVG(Survival_Months), 12)) AS months
FROM breast_cancer;

-- 13. Average survival by tumor Grade
-- Computes average survival time in years and months grouped by tumor Grade
SELECT 
	Grade, 
	FLOOR(AVG(Survival_Months)/12) AS years,
    ROUND(MOD(AVG(Survival_Months), 12)) AS months 
FROM breast_cancer
GROUP BY Grade
ORDER BY Grade;


-- 14. Number and percentage of alive/deceased patients by Grade
-- Computes counts and percentages of Alive and Dead patients for each tumor Grade
SELECT
    Grade,
    -- Count of Alive patients
    SUM(CASE WHEN Status='Alive' THEN 1 ELSE 0 END) AS alive_count,
    -- Count of Deceased patients
    SUM(CASE WHEN Status='Dead' THEN 1 ELSE 0 END) AS dead_count,
    -- Percentage of Alive patients
    ROUND(SUM(CASE WHEN Status='Alive' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS alive_percentage,
    -- Percentage of Deceased patients
    ROUND(SUM(CASE WHEN Status='Dead' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS dead_percentage
FROM breast_cancer
GROUP BY Grade
ORDER BY Grade;


