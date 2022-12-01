
SELECT 
    t1.dt, 
    AVG(t2.signups) AS signups_sma7,
    AVG(t3.signups) AS signups_sma28
FROM growth.retail_user_activation t1
    LEFT JOIN growth.retail_user_activation t2
        ON DAYS_BETWEEN(t1.dt, t2.dt) BETWEEN 0 AND 6
    LEFT JOIN growth.retail_user_activation t3
        ON DAYS_BETWEEN(t1.dt, t3.dt) BETWEEN 0 AND 27
GROUP BY
    t1.dt
ORDER BY
    t1.dt