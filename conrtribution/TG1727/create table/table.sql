				-- tech_officer

CREATE TABLE tech_officer (
    user_id VARCHAR(10) PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

				-- dean
CREATE TABLE dean (
    lecture_id VARCHAR(10) PRIMARY KEY,
    term_start DATE NOT NULL,
    term_end DATE,
    FOREIGN KEY (lecture_id) REFERENCES lecture(user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

				-- cource
CREATE TABLE course (
    course_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    credit INT NOT NULL,
    academic_year INT CHECK (academic_year BETWEEN 1 AND 4),
    semester ENUM('1', '2') NOT NULL,
    total_hours DECIMAL(5,2) DEFAULT 50.00,
    weekly_hours DECIMAL(4,2) DEFAULT 3.00
);
