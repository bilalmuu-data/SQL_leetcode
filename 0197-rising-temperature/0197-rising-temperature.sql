WITH rising AS (
    SELECT 
        id,
        recordDate,
        temperature,
        LAG(temperature, 1) OVER (ORDER BY recordDate) AS upcoming_temp,
        LAG(recordDate, 1) OVER (ORDER BY recordDate) AS PreviousRecordDate
    FROM
        weather
)

SELECT
    id
FROM
    rising
WHERE
    temperature > upcoming_temp
AND 
    recordDate = DATE_ADD(PreviousRecordDate, INTERVAL 1 DAY);