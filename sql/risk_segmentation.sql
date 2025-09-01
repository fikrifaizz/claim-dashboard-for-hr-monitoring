SELECT
        age,
        bmi,
        children,
        CASE WHEN smoker='yes' THEN 1 ELSE 0 END AS smoker_flag,
        sex,
        region,
        charges
FROM claim_insurance