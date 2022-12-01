
SELECT
    dt, 
    AVG(signups) OVER (ORDER BY dt 
                       ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)   AS signups_sma7,
    AVG(signups) OVER (ORDER BY dt
                        ROWS BETWEEN 27 PRECEDING AND CURRENT ROW) AS signups_sma28
FROM growth.retail_user_activation
ORDER BY
    dt
