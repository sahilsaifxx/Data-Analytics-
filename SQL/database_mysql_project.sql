CREATE DATABASE invertis;
USE invertis;

CREATE TABLE Library (
    bookID INTEGER PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    rollNo VARCHAR(20),
    dateIssued DATE,
    dateReturned DATE,
    currentStatus VARCHAR(20)
);

INSERT INTO Library
(bookID, title, rollNo, dateIssued, dateReturned, currentStatus)
VALUES
(101, 'Data Structures', 'C2011', '2026-08-01', '2026-08-10', 'Returned'),
(102, 'Operating System', 'C2025', '2026-08-05', '2026-08-15', 'Returned'),
(103, 'Machine Learning', 'C2030', '2026-08-12', NULL, 'Issued'),
(104, 'Web Development', 'C2042', '2026-08-18', NULL, 'Issued'),
(105, 'DBMS', 'C2055', '2026-08-02', NULL, 'Issued');

CREATE TABLE Result (
    resultNo INTEGER PRIMARY KEY AUTO_INCREMENT,
    rollNo VARCHAR(20) NOT NULL,
    fullName VARCHAR(100) NOT NULL,
    courseName VARCHAR(50),
    semNo INT,
    marksObtained INT,
    marksTotal INT,
    gradeAwarded VARCHAR(10),
    finalStatus VARCHAR(20)
);

INSERT INTO Result
(rollNo, fullName, courseName, semNo, marksObtained, marksTotal, gradeAwarded, finalStatus)
VALUES
('C2011', 'Aarav Sharma', 'BCA', 3, 88, 100, 'A', 'Pass'),
('C2025', 'Sneha Verma', 'MCA', 2, 74, 100, 'B', 'Pass'),
('C2030', 'Rahul Singh', 'B.Tech', 1, 62, 100, 'C+', 'Pass'),
('C2042', 'Priya Gupta', 'MBA', 4, 91, 100, 'A+', 'Pass'),
('C2055', 'Vikash Yadav', 'BBA', 3, 35, 100, 'F', 'Fail');

CREATE TABLE Fees (
    feeRecordID INTEGER PRIMARY KEY AUTO_INCREMENT,
    courseName VARCHAR(50),
    tuitionAmount DECIMAL(10,2),
    examAmount DECIMAL(10,2),
    insuranceAmount DECIMAL(10,2),
    grossAmount DECIMAL(10,2),
    discountAmount DECIMAL(10,2),
    payableAmount DECIMAL(10,2)
);

INSERT INTO Fees
(courseName, tuitionAmount, examAmount, insuranceAmount,
 grossAmount, discountAmount, payableAmount)
VALUES
('MCA(DS)', 135000.00, 7500.00, 600.00, 143100.00, 18000.00, 125100.00),
('B.Tech(CS)', 98000.00, 6000.00, 600.00, 104600.00, NULL, 104600.00),
('MBA(Finance)', 125000.00, 8000.00, 600.00, 133600.00, 12000.00, 121600.00),
('BBA(HR)', 58000.00, 5500.00, 600.00, 64100.00, 6000.00, 58100.00),
('MCA(Gen)', 72000.00, 6000.00, 600.00, 78600.00, NULL, 78600.00),
('BCA(DS)', 48000.00, 5500.00, 600.00, 54100.00, 4000.00, 50100.00);

CREATE TABLE Academic (
    facultyID INTEGER PRIMARY KEY,
    facultyName VARCHAR(100) NOT NULL,
    deptName VARCHAR(100),
    subjectName VARCHAR(100),
    classDay VARCHAR(20),
    fromTime TIME,
    toTime TIME,
    durationHrs DECIMAL(4,1),
    roomNo VARCHAR(20)
);

INSERT INTO Academic
(facultyID, facultyName, deptName, subjectName,
 classDay, fromTime, toTime, durationHrs, roomNo)
VALUES
(201, 'Dr. Neha Singh', 'Computer Science', 'Data Structures',
 'Monday', '09:30:00', '11:30:00', 2.0, 'Room 101'),
(202, 'Prof. Rajesh Kumar', 'Computer Science', 'Operating System',
 'Tuesday', '11:00:00', '13:00:00', 2.0, 'Room 102'),
(203, 'Dr. Amit Patel', 'Information Technology', 'Machine Learning',
 'Wednesday', '14:00:00', '16:00:00', 2.0, 'Room 203'),
(204, 'Ms. Pooja Rani', 'Computer Applications', 'Web Development',
 'Thursday', '10:00:00', '12:00:00', 2.0, 'Room 305'),
(205, 'Mr. Suresh Tiwari', 'Computer Science', 'DBMS',
 'Friday', '13:00:00', '15:00:00', 2.0, 'Room 110');

SELECT * FROM Library;
SELECT * FROM Result;
SELECT * FROM Fees;
SELECT * FROM Academic;