CREATE PROCEDURE sp_UpdateSubjectAllotments
AS
BEGIN
    DECLARE @StudentId INT, @NewSubjectId VARCHAR(10), @CurrentSubjectId VARCHAR(10);

    DECLARE request_cursor CURSOR FOR
        SELECT StudentId, SubjectId FROM SubjectRequest;

    OPEN request_cursor;

    FETCH NEXT FROM request_cursor INTO @StudentId, @NewSubjectId;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Get current active subject if any
        SELECT @CurrentSubjectId = SubjectId
        FROM SubjectAllotments
        WHERE StudentId = @StudentId AND Is_Valid = 1;

        IF @CurrentSubjectId IS NULL
        BEGIN
            -- No current subject, insert new subject
            INSERT INTO SubjectAllotments (StudentId, SubjectId, Is_Valid)
            VALUES (@StudentId, @NewSubjectId, 1);
        END
        ELSE IF @CurrentSubjectId != @NewSubjectId
        BEGIN
            -- Update old subject to inactive
            UPDATE SubjectAllotments
            SET Is_Valid = 0
            WHERE StudentId = @StudentId AND Is_Valid = 1;

            -- Insert new active subject
            INSERT INTO SubjectAllotments (StudentId, SubjectId, Is_Valid)
            VALUES (@StudentId, @NewSubjectId, 1);
        END

        FETCH NEXT FROM request_cursor INTO @StudentId, @NewSubjectId;
    END

    CLOSE request_cursor;
    DEALLOCATE request_cursor;
END;
