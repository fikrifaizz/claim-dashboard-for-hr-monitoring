CREATE DATABASE claim_dashboard_hr;

CREATE TABLE claim_insurance(
    age int,
    sex varchar(255),
    bmi float,
    children int,
    smoker varchar(255),
    region varchar(255),
    charges float,
    bmi_category varchar(255),
    age_category varchar(255)
);

SELECT * FROM claim_insurance;