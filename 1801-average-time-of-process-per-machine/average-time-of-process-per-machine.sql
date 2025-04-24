SELECT
    t1.machine_id,
    ROUND(AVG(t2.timestamp - t1.timestamp), 3) AS processing_time
FROM
    Activity AS t1,
    Activity AS t2
WHERE
    t1.machine_id = t2.machine_id
AND
    t1.process_id = t2.process_id
AND
    t1.activity_type = 'start'
AND
    t2.activity_type = 'end'
GROUP BY
    machine_id;    