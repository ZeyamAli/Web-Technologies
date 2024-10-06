-- Create the database
CREATE DATABASE University;

-- Use the database
USE University;

-- Create the table
CREATE TABLE
    Student (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        father_name VARCHAR(100),
        city VARCHAR(100),
        age INT,
        mobile_num VARCHAR(15)
    );

-- Insert 20 dummy records into the Student table
INSERT INTO
    Student (name, father_name, city, age, mobile_num)
VALUES
    (
        'Alice Johnson',
        'David Johnson',
        'Lahore',
        19,
        '03001234567'
    ),
    (
        'Bob Williams',
        'Paul Williams',
        'Karachi',
        21,
        '03129876543'
    ),
    (
        'Carol Brown',
        'George Brown',
        'Islamabad',
        20,
        '03214567890'
    ),
    (
        'Daniel Harris',
        'John Harris',
        'Faisalabad',
        22,
        '03325678901'
    ),
    (
        'Eva Martinez',
        'Robert Martinez',
        'Rawalpindi',
        20,
        '03436789012'
    ),
    (
        'Frank Lee',
        'Michael Lee',
        'Lahore',
        23,
        '03547890123'
    ),
    (
        'Grace Walker',
        'James Walker',
        'Karachi',
        19,
        '03658901234'
    ),
    (
        'Hank Scott',
        'William Scott',
        'Islamabad',
        21,
        '03769012345'
    ),
    (
        'Ivy Turner',
        'Richard Turner',
        'Faisalabad',
        22,
        '03870123456'
    ),
    (
        'Jack Adams',
        'Paul Adams',
        'Rawalpindi',
        20,
        '03981234567'
    ),
    (
        'Kelly Green',
        'Christopher Green',
        'Lahore',
        21,
        '04092345678'
    ),
    (
        'Leo Baker',
        'Daniel Baker',
        'Karachi',
        22,
        '04103456789'
    ),
    (
        'Mia Wilson',
        'George Wilson',
        'Islamabad',
        19,
        '04214567890'
    ),
    (
        'Nate Carter',
        'Robert Carter',
        'Faisalabad',
        23,
        '04325678901'
    ),
    (
        'Olivia Evans',
        'Michael Evans',
        'Rawalpindi',
        20,
        '04436789012'
    ),
    (
        'Paul Cooper',
        'John Cooper',
        'Lahore',
        21,
        '04547890123'
    ),
    (
        'Quinn Reed',
        'Paul Reed',
        'Karachi',
        22,
        '04658901234'
    ),
    (
        'Rita Morris',
        'James Morris',
        'Islamabad',
        20,
        '04769012345'
    ),
    (
        'Steve Cox',
        'Richard Cox',
        'Faisalabad',
        22,
        '04870123456'
    ),
    (
        'Tina Rogers',
        'William Rogers',
        'Rawalpindi',
        23,
        '04981234567'
    ),
    (
        'Uma Stewart',
        'David Stewart',
        'Lahore',
        20,
        '05092345678'
    ),
    (
        'Vera Brooks',
        'Michael Brooks',
        'Karachi',
        21,
        '05103456789'
    );