INSERT INTO Student (name, address)
SELECT 'Zahid Khan', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM Student
                  WHERE name = 'Zahid Khan');


INSERT INTO Student (name, address)
SELECT 'SA', '123 Maple Avenue, Springfield'
WHERE NOT EXISTS (SELECT 1
                  FROM Student
                  WHERE name = 'SA');