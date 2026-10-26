SELECT   ps.Hospital,
         ps.Ward,
         COUNT(*) AS "No.ofPts",
         SUM(ps.Tariff) AS TotalTariff
FROM     PatientStay AS ps
GROUP BY ps.Hospital, ps.Ward;