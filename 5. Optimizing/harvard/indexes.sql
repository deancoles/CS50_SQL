-- Write a set of SQL statements that create indexes which will speed up typical queries on the harvard.db database

CREATE INDEX student_details on students (id, name);
CREATE INDEX student_enrollment on enrollments (student_id, course_id, title);
CREATE INDEX course_information on courses (id, department, title, semester);
CREATE INDEX semester_courses on courses (semester, title);
