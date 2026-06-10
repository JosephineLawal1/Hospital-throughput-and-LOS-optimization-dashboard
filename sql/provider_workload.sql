SELECT 
    provider_id,
    COUNT(*) AS encounter_count,
    AVG(DATEDIFF(minute, start_time, end_time)) AS avg_encounter_duration,
    MIN(start_time) AS first_encounter,
    MAX(end_time) AS last_encounter
FROM encounters
GROUP BY provider_id
ORDER BY encounter_count DESC;
