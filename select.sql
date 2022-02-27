SET client_encoding='utf-8';

SELECT
    *
FROM
    proficient_in
WHERE 
    prof_name LIKE ('%Save');
-- Shows which characters are proficient in which Save type proficiencies

SELECT
    item_name, 
    char_name, 
    item_state
FROM
    item_copy
WHERE
    item_state IS NOT NULL;
-- shows info about items whose state we keep track of

SELECT
    char_name,
    COUNT(char_name) item_count
FROM
    item_copy
GROUP BY 
    char_name;
-- shows how many unique items each character has (counting groups of items such as arrows as 1)

SELECT
    spell_name, 
    spell_lvl
FROM
    spell
WHERE
    spell_lvl NOT IN (0, 1);
-- lists more powerful spells, as well as how strong they are

SELECT
    c.char_name,
    c.class_name,
    c.class_level,
    cl.hitdice
FROM
    char_class c
INNER JOIN class cl
    ON c.class_name = cl.class_name;
-- shows characters' classes and their corresponding levels and hitdice

SELECT 
    c.class_name,
    s.spell_name
FROM 
    class c 
LEFT JOIN spell_class s 
    ON c.class_name = s.class_name
ORDER BY
    c.class_name;
-- shows all spells available by each class (including those which have no spells at all)

UPDATE
    proficient_in
SET
    char_name = c.char_name
FROM
    (
        SELECT
            char_name
        FROM 
            character
        WHERE
            char_name IN ('Bango Baldins')
    ) c
WHERE
    prof_name IN ('Stealth');
-- changes who is proficient in stealth from Mianeska to Bango Baldins, works only if no one else proficient in stealth have been added to the database

SELECT
    c.char_name,
    s.spell_name
FROM
    char_class c
JOIN
    spell_class s
ON
    c.class_name = s.class_name
WHERE
    c.class_name IN (
        SELECT
            class_name
        FROM
            spell_class
    );
-- shows which characters can cast which spells based on their class

SELECT
    char_name
FROM
    character
WHERE
    char_name NOT IN (
        SELECT
            char_name
        FROM
            proficient_in
        WHERE
            prof_name = 'Common'
    );
-- shows characters which are not proficient in common language

SELECT
    race_name,
    speed
FROM
    race
WHERE
    speed IN (
        SELECT
            AVG(speed)
        FROM
            race
    );


DELETE FROM proficient_in
WHERE prof_name = 'Heavy Armor';
-- deletes proficiency in heavy armor from all characters

CREATE VIEW basic_info AS 
SELECT
    player_nickname player,
    char_name chara,
    level
FROM
    character;
-- creates a view with only the basic info about the character