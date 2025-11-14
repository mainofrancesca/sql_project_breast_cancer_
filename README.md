# SQL Project: Breast Cancer Analysis

## Description
This project contains SQL queries analyzing a breast cancer dataset.  
The goal is to demonstrate SQL skills and basic statistical analysis on real-world healthcare data.

## Project Structure
- `data/` : CSV dataset (`breast_cancer.csv`)
- `sql_scripts/` : SQL queries (`queries.sql`)
- `outputs/` : Query results exported in CSV
- `images/` : Screenshots of query results

## Requirements
- MySQL or compatible SQL database
- SQL editor (DBeaver, MySQL Workbench, etc.)

## Queries included
1. **Total number of patients**  
   - Counts all patients in the dataset.

2. **Average, minimum, and maximum age of patients**  
   - Computes average, youngest, and oldest patient ages.

3. **Distribution of patients by marital status**  
   - Counts patients grouped by marital status.

4. **Average age of Single vs Married patients**  
   - Compares the average age between Single and Married patients.

5. **Distribution of patients by race**  
   - Counts patients grouped by race.

6. **Number of patients by tumor Grade**  
   - Counts patients grouped by tumor grade.

7. **Distribution of patients by T_Stage**  
   - Counts patients grouped by tumor T stage.

8. **Percentage of estrogen/progesterone positive patients by T_Stage**  
   - Computes % of patients positive for estrogen/progesterone receptors per T_Stage.

9. **Number of patients by combination of T_Stage and N_Stage**  
   - Counts patients for each combination of T stage and N stage.

10. **Average age for each combination of Grade and 6th_Stage**  
    - Computes the average age of patients for each tumor grade and 6th AJCC stage combination.

11. **Average tumor size by Grade**  
    - Computes average tumor size for each tumor grade.

12. **Average survival in years and months of patients**  
    - Computes average survival time in years and months for all patients.

13. **Average survival by tumor Grade**  
    - Computes average survival time in years and months grouped by tumor Grade.

14. **Number and percentage of alive/deceased patients by Grade**  
    - Computes counts and percentages of Alive and Dead patients for each tumor Grade.

## How to use
1. Place the CSV dataset in the `data/` folder.  
2. Import the CSV into your MySQL database.  
3. Open `queries.sql` in your SQL editor.  
4. Run the queries and optionally export the results to CSV in the `outputs/` folder.  
5. Screenshots of the results can be saved in the `images/` folder for documentation or presentation.

