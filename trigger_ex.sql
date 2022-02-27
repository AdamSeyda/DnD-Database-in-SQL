SET client_encoding='utf-8';

SELECT
    *
FROM
    char_class;

SELECT
    char_name,
    level
FROM
    character;

UPDATE
    char_class
SET
    class_level = 1
WHERE
    char_name IN ('Sucre', 'Alejandor');

SELECT
    *
FROM
    char_class;

SELECT
    char_name,
    level
FROM
    character;

INSERT INTO 
    char_class (char_name, class_name, class_level) 
VALUES 
    ('Sucre', 'Warlock', 3);

SELECT
    *
FROM
    char_class;

SELECT
    char_name,
    level
FROM
    character;
