
CREATE TABLE IF NOT EXISTS departments (
    department_id INTEGER PRIMARY KEY AUTOINCREMENT,
    department_name TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS students (
    student_id TEXT PRIMARY KEY NOT NULL ,
    name TEXT NOT NULL,
    student_code TEXT UNIQUE NOT NULL,
    department_id INTEGER DEFAULT NULL,
    level INTEGER NOT NULL,
    hours_passed INTEGER NOT NULL,
    gpa REAL NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments (department_id)
);


CREATE TABLE IF NOT EXISTS registrations (
    registration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id TEXT NOT NULL,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (department_id) REFERENCES departments (department_id),
    UNIQUE (student_id, department_id)
);



INSERT INTO departments (department_name) VALUES (
    'Computer Science'
);

INSERT INTO departments (department_name) VALUES (
    'Information Systems'
);

INSERT INTO departments (department_name) VALUES (
    'Artificial Intelligence'
);

INSERT INTO departments (department_name) VALUES (
    'Scientific Computing'
);

SELECT * FROM departments;
SELECT * FROM  students;
SELECT * FROM registrations;

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Amr Ashraf Mohamed', '30402051700999', '202233235', 3, 61, 3.51);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Sara Ahmed Ali', '30402051701000', '202233236', 3, 40, 3.75);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Mohamed Tarek Salim', '30402051701001', '202233237', 3, 64, 3.85);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Lina Hassan Omar', '30402051701002', '202233238', 3, 60, 3.60);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Youssef Adel Kamal', '30402051701003', '202233239', 3, 75, 3.45);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Nour Ibrahim Zaki', '30402051701004', '202233240', 3, 55, 3.67);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Layla Ahmed Nabil', '30402051701005', '202233241', 3, 59, 3.90);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Omar Khaled Salah', '30402051701006', '202233242', 3, 70, 3.30);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Fatma Hany Ali', '30402051701007', '202233243', 3, 55, 3.95);

INSERT INTO students (name, student_id, student_code, level, hours_passed, gpa)
VALUES ('Hussein Gamal Farid', '30402051701008', '202233244', 3, 65, 3.80);


DELETE FROM departments
WHERE department_id = 5;

UPDATE students
SET level = 3
WHERE student_id = 2;


SELECT * FROM departments;
SELECT * FROM students;
SELECT description  FROM departments WHERE department_name = 'Computer Science';
