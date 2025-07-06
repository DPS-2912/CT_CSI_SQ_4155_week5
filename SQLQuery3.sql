EXEC sp_UpdateSubjectAllotments;

-- View updated subject allotments
SELECT * FROM SubjectAllotments ORDER BY StudentId, Is_Valid DESC;