CREATE database QuanlySinhVien;

Create table Subjects(
        SubjectID int primary key,
        SubjectName varchar(50)
);
Create table Students(
        StudentID int primary key,
        StudentName varchar(50),
        Age int,
        Email varchar(100)
);
Create table classes(
        classID int primary key,
        className varchar(50)
        );
Create table Marks(
		Mark int, 
        SubjectID int,
        StudentID int
);

Create table ClassStudent(
        StudentID int FOREIGN KEY REFERENCES Students(StudentID)
		ClassID int FOREIGN KEY REFERENCES classes(ClassID)
);
-- 1
   select * from students;
-- 2
select * from Subjects;
-- 3
select * from marks;
select AVG(Mark) from marks where StudentID;
-- 4
select SubjectName from subjects where SubjectID =(select SubjectID from marks where MarkID = (select max(markID) from marks));
-- 6
alter table subjects modify column SubjectName varchar(255) not null;

-- 7
update subjects set `subjectName` = (select subjectName subjects where subjectId = 1);

-- 8
alter table Students 
add constraint check(Age>15 and Age <50); 

-- 9
alter table students
add status int not null ;