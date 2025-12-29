-- liquibase formatted sql

-- changeset zahid_khan2:1766939108811-2
INSERT INTO STUDENT (ID, NAME, ADDRESS)
SELECT 1, 'Jane Doe', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM STUDENT
                  WHERE NAME = 'Jane Doe');

INSERT INTO STUDENT (ID, NAME, ADDRESS)
SELECT 2, 'Jane Doe', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM STUDENT
                  WHERE ID = 2);

INSERT INTO STUDENT (ID, NAME, ADDRESS)
SELECT 3, 'Zahid Khan', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM STUDENT
                  WHERE NAME = 'Zahid Khan');

INSERT INTO STUDENT (ID, NAME, ADDRESS)
SELECT 4, 'Sarwat Ali', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM STUDENT
                  WHERE NAME = 'Sarwat Ali');
INSERT INTO STUDENT (ID, NAME, ADDRESS)
SELECT 5, 'SA', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM STUDENT
                  WHERE NAME = 'SA');
-- rollback truncate student
