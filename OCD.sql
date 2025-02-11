# -- 1. Count & Pct of F vs M that have OCD & -- Average Obsession Score by Gender
SELECT
Gender,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score

FROM Heathcare.ocd_patient_dataset
Group By 1
Order by 2;

# -- 2. Count of Patients by Ethnicity and their respective Average Obsession Score

SELECT
Ethnicity,
count(`Patient ID`) as patient_count,
avg(`Y-BOCS Score (Obsessions)`) as obs_score
FROM Heathcare.ocd_patient_dataset
Group by 1
Order by 2;

# -- 3. Number of people diagnosed with OCD MoM
-- alter table Heathcare.ocd_patient_dataset
-- modify `OCD Diagnosis Date` date;
SELECT
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
-- `OCD Diagnosis Date`
count(`Patient ID`) patient_count
FROM Heathcare.ocd_patient_dataset
Group by 1
Order by 1;

# -- 4. What is the most common Obsession Type (Count) & it's respective Average Obsession Score

Select
`Obsession Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
FROM Heathcare.ocd_patient_dataset
group by 1
Order by 2;

# -- 5. What is the most common Compulsion type (Count) & it's respective Average Obsession Score

Select
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
FROM Heathcare.ocd_patient_dataset
group by 1
Order by 2;