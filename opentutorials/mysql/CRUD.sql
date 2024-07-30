-- (C) INSERT
INSERT INTO
    topic (title, description, created, author, profile)
VALUES
    (
        'MySQL',
        'MySQL is ...',
        NOW(),
        'egoing',
        'developer'
    );



-- (R) SELECT
SELECT * FROM topic;
/*
+----+------------+-------------------+---------------------+--------+---------------------------+
| id | title      | description       | created             | author | profile                   |
+----+------------+-------------------+---------------------+--------+---------------------------+
|  1 | MySQL      | MySQL is ...      | 2018-01-01 12:10:11 | egoing | developer                 |
|  2 | Oracle     | Oracle is ...     | 2018-01-03 13:01:10 | egoing | developer                 |
|  3 | SQL Server | SQL Server is ... | 2018-01-20 11:01:10 | duru   | data administrator        |
|  4 | PostgreSQL | PostgreSQL is ... | 2018-01-23 01:03:03 | taeho  | data scientist, developer |
|  5 | MongoDB    | MongoDB is ...    | 2018-01-30 12:31:03 | egoing | developer                 |
+----+------------+-------------------+---------------------+--------+---------------------------+
*/

SELECT id, title, created, author FROM topic;

-- (FROM 생략 가능)
SELECT "egoing";
/*
+--------+
| egoing |
+--------+
| egoing |
+--------+
*/
SELECT "egoing", 1+1;
/*
+--------+-----+
| egoing | 1+1 |
+--------+-----+
| egoing |   2 |
+--------+-----+
*/

-- (조건 WHERE)
SELECT * FROM topic WHERE author='egoing';

-- (id 기준 오름차순_큰 숫자부터 나오도록 / 내림차순(ASC))
SELECT * FROM topic WHERE author='egoing' ORDER BY id DESC;

-- (오름차순으로 했을 때, 2까지만 검색)
SELECT * FROM topic WHERE author='egoing' ORDER BY id DESC LIMIT 2;



-- (U) UPDATE
-- (WHERE문이 빠지면 큰 재앙이 온다.)
UPDATE topic SET description='Oracle is ...', title='Oracle' WHERE id=2;



-- (D) DELETE
-- (WHERE문 중요중요)
DELETE FROM topic WHERE id=5;
