CREATE TABLE SubjectAllotments (
    StudentId INT,
    SubjectId VARCHAR(10),
    Is_Valid BIT
);

CREATE TABLE SubjectRequest (
    StudentId INT,
    SubjectId VARCHAR(10)
);

INSERT INTO SubjectAllotments VALUES
(159103036, 'PO1491', 1),
(159103036, 'PO1492', 0),
(159103036, 'PO1493', 0),
(159103037, 'PO1495', 1),
(159103038, 'PO1496', 1);

INSERT INTO SubjectRequest VALUES
(159103036, 'PO1496'),  
(159103037, 'PO1495'),  
(159103039, 'PO1492');  

select * from SubjectAllotments;
select * from SubjectRequest;