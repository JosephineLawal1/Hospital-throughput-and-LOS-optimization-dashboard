SELECT 
    patient_id,
    COUNT(*) AS encounter_count
FROM encounters
GROUP BY patient_id
HAVING COUNT(*) >= 4;
