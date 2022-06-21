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
   
   select * from students;
   
   select * from Subjects;
   
   select * from marks;
   select AVG(Mark) from marks where StudentID;
