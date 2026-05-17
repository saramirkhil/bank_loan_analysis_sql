-- ============================================================
-- BANK LOAN ANALYSIS PROJECT
-- Author: Sara Mirkhil | BI & Data Analytics Portfolio
-- Step 1: Run this file first to create the database and table
-- Step 2: Import loans_clean.csv via Table Data Import Wizard
-- Step 3: Run bank_loan_queries_final.sql
-- ============================================================

CREATE DATABASE IF NOT EXISTS bank_loan_db;
USE bank_loan_db;

DROP TABLE IF EXISTS loans;

CREATE TABLE loans (
    loan_id           VARCHAR(50),
    customer_id       VARCHAR(50),
    loan_amount       BIGINT,
    term              VARCHAR(20),
    credit_score      INT,
    annual_income     BIGINT,
    years_in_job      VARCHAR(20),
    home_ownership    VARCHAR(30),
    purpose           VARCHAR(50),
    monthly_debt      DECIMAL(15,2),
    credit_history    DECIMAL(5,1),
    months_delinquent DECIMAL(5,1),
    open_accounts     INT,
    credit_problems   INT,
    credit_balance    BIGINT,
    max_credit        BIGINT,
    bankruptcies      INT,
    tax_liens         INT
);

-- After running this, import loans_clean.csv into the loans table
-- Right click loans table -> Table Data Import Wizard -> select loans_clean.csv
