--get doc ids
SELECT *
FROM Page
WHERE meta().id like "%_ar-SA%"

--delete
DELETE FROM Page
WHERE META().id LIKE "%_ar-SA%" LIMIY 10000;