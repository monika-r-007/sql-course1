SELECT ps.PatientId,
       ps.Ward,
       h.Hospital,
       h.HospitalType,
       h.Reach
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'Teaching';

SELECT   h.Reach,
         COUNT(*) AS NumberOfPts
FROM     PatientStay AS ps
         INNER JOIN
         DimHospital AS h
         ON ps.Hospital = h.Hospital
GROUP BY h.Reach;

SELECT   ps.Ward,
         COUNT(DISTINCT ps.PatientId) AS NumberOfPatients,
         SUM(ps.Tariff) AS TotalTariff,
         AVG(ps.Tariff) AS AverageTariff
FROM     PatientStay AS ps
GROUP BY ps.Ward;

/* AI-generated Code - list patients in Kingston and PRUH hospitals */
SELECT ps.PatientId,
       ps.Ward,
       h.Hospital,
       h.HospitalType,
       h.Reach
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.Hospital IN ('Kingston', 'PRUH');