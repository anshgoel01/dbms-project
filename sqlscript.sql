REM   Script: Project
REM   Draft 1

CREATE TABLE Diseases ( 
    disease_id NUMBER PRIMARY KEY, 
    disease_name VARCHAR2(255) NOT NULL, 
    description CLOB 
);

CREATE TABLE Medicines ( 
    medicine_id NUMBER PRIMARY KEY, 
    medicine_name VARCHAR2(255) NOT NULL, 
    medicine_type VARCHAR2(100),, 
    price NUMBER(10,2) 
);

CREATE TABLE Medicines ( 
    medicine_id NUMBER PRIMARY KEY, 
    medicine_name VARCHAR2(255) NOT NULL, 
    medicine_type VARCHAR2(100), 
    price NUMBER(10,2) 
);

CREATE TABLE Companies ( 
    company_id NUMBER PRIMARY KEY, 
    company_name VARCHAR2(255) NOT NULL, 
    company_location VARCHAR2(255), 
    contact_info VARCHAR2(255) 
);

CREATE TABLE Disease_Medicine ( 
    disease_id NUMBER, 
    medicine_id NUMBER, 
    CONSTRAINT fk_disease FOREIGN KEY (disease_id) REFERENCES Diseases(disease_id) ON DELETE CASCADE, 
    CONSTRAINT fk_medicine FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id) ON DELETE CASCADE, 
    PRIMARY KEY (disease_id, medicine_id) 
);

CREATE TABLE Medicine_Company ( 
    medicine_id NUMBER, 
    company_id NUMBER, 
    CONSTRAINT fk_medicine_company FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id) ON DELETE CASCADE, 
    CONSTRAINT fk_company FOREIGN KEY (company_id) REFERENCES Companies(company_id) ON DELETE CASCADE, 
    PRIMARY KEY (medicine_id, company_id) 
);

CREATE TABLE Alternatives ( 
    medicine_id NUMBER, 
    alternative_medicine_id NUMBER, 
    CONSTRAINT fk_medicine1 FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id) ON DELETE CASCADE, 
    CONSTRAINT fk_medicine2 FOREIGN KEY (alternative_medicine_id) REFERENCES Medicines(medicine_id) ON DELETE CASCADE, 
    PRIMARY KEY (medicine_id, alternative_medicine_id) 
);

INSERT ALL 
INTO Diseases (disease_id, disease_name, description) VALUES 
    (1, 'Diabetes', 'A group of diseases affecting blood sugar regulation.') 
INTO Diseases (disease_id, disease_name, description) VALUES  
    (2, 'Hypertension', 'High blood pressure.') 
INTO Diseases (disease_id, disease_name, description) VALUES  
    (3, 'Malaria', 'A mosquito-borne infectious disease.') 
INTO Diseases (disease_id, disease_name, description) VALUES  
    (4, 'Cold & Cough', 'Common viral infection affecting the respiratory tract.') 
INTO Diseases (disease_id, disease_name, description) VALUES  
    (5, 'Tuberculosis', 'A severe bacterial infection affecting the lungs.') 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (1, 'Metformin', 'Tablet', 1, 150.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (2, 'Glimepiride', 'Tablet', 2, 120.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (3, 'Insulin', 'Injection', 3, 500.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (4, 'Amlodipine', 'Tablet', 1, 75.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (5, 'Losartan', 'Tablet', 2, 95.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (6, 'Lisinopril', 'Tablet', 3, 80.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (7, 'Artemisinin', 'Tablet', 1, 350.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (8, 'Chloroquine', 'Tablet', 2, 60.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type, rank, price) VALUES (9, 'Quinine', 'Injection', 3, 120.00) 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (1, 'Metformin', 'Tablet',  150.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (2, 'Glimepiride', 'Tablet', 120.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (3, 'Insulin', 'Injection',  500.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (4, 'Amlodipine', 'Tablet',  75.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (5, 'Losartan', 'Tablet', 95.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (6, 'Lisinopril', 'Tablet',  80.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (7, 'Artemisinin', 'Tablet',  350.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (8, 'Chloroquine', 'Tablet',  60.00) 
INTO Medicines (medicine_id, medicine_name, medicine_type,  price) VALUES (9, 'Quinine', 'Injection',  120.00) 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO Companies (company_id, company_name, company_location, contact_info) VALUES (1, 'Sun Pharma', 'India', 'contact@sunpharma.com') 
INTO Companies (company_id, company_name, company_location, contact_info) VALUES (2, 'Cipla', 'India', 'contact@cipla.com') 
INTO Companies (company_id, company_name, company_location, contact_info) VALUES (3, 'Ranbaxy', 'India', 'contact@ranbaxy.com') 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (1, 1) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (1, 2) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (1, 3) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (2, 4) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (2, 5) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (2, 6) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (3, 7) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (3, 8) 
INTO Disease_Medicine (disease_id, medicine_id) VALUES (3, 9) 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO Medicine_Company (medicine_id, company_id) VALUES (1, 1) 
INTO Medicine_Company (medicine_id, company_id) VALUES (2, 2) 
INTO Medicine_Company (medicine_id, company_id) VALUES (3, 3) 
INTO Medicine_Company (medicine_id, company_id) VALUES (4, 1) 
INTO Medicine_Company (medicine_id, company_id) VALUES (5, 2) 
INTO Medicine_Company (medicine_id, company_id) VALUES (6, 3) 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO Alternatives (medicine_id, alternative_medicine_id) VALUES (1, 2) 
INTO Alternatives (medicine_id, alternative_medicine_id) VALUES (4, 5) 
INTO Alternatives (medicine_id, alternative_medicine_id) VALUES (7, 8) 
SELECT 1 FROM DUAL;

SELECT * FROM Diseases;

SELECT * FROM Medicines;

SELECT * FROM Companies;

SELECT * FROM Disease_Medicine;

SELECT * FROM Medicine_Company;

SELECT * FROM Alternatives;

