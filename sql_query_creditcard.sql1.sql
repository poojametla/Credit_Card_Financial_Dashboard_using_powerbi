-- SQL Query to create and import data from csv files:

-- 0. Create a database 
CREATE DATABASE creditcdb;
use creditcdb;

-- 1. Create creditc_detail table

CREATE TABLE creditc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


-- 2. Create customer_detail table

CREATE TABLE customer_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


-- 3. load csv data into SQL (remember to update the file name and file location in below query)

---loading creditc_detail table

LOAD DATA LOCAL INFILE "C:\Users\sivak\Downloads\credit_card.csv"
INTO TABLE creditc_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- load customer_detail table

LOAD DATA LOCAL INFILE 'C:/Users/sivak/Downloads/cust_add.csv'
INTO TABLE customer_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- 4. Insert additional data into SQL

--  additional data (week-53) in cc_detail table

LOAD DATA LOCAL INFILE 'C:/Users/sivak/Downloads/cc_add.csv'
INTO TABLE creditc_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



-- copy additional data (week-53) in cust_detail table (remember to update the file name and file location in below query)

LOAD DATA LOCAL INFILE 'C:/Users/sivak/Downloads/cust_add.csv'
INTO TABLE customer_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


