SET client_encoding='utf-8';

CREATE FUNCTION level_con() --short for level consistency
    RETURNS trigger AS $$
    BEGIN 
        UPDATE
            character s
        SET
            level = c.lv
        FROM
            (
                SELECT
                    char_name,
                    SUM(class_level) lv
                FROM 
                    char_class
                GROUP BY
                    char_name
            ) c
        WHERE
            s.char_name = c.char_name;
        RETURN NEW;
    END;
    $$
    LANGUAGE 'plpgsql';

CREATE TRIGGER level_update
    AFTER UPDATE ON char_class
    FOR EACH STATEMENT
    EXECUTE PROCEDURE level_con();

CREATE TRIGGER level_insert
    AFTER INSERT ON char_class
    FOR EACH STATEMENT
    EXECUTE PROCEDURE level_con();