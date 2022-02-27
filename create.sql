SET client_encoding='utf-8';

CREATE TABLE player
(
    player_nickname     varchar(32)     not null,
    CONSTRAINT          player_pk       PRIMARY KEY(player_nickname)
);

CREATE TABLE race
(
    race_name   varchar(20)     not null,
    size        varchar(10)     not null,
    race_desc   varchar(500),
    life_span   varchar(20)     not null,
    speed       int             not null, -- in feet per turn
    CONSTRAINT  race_pk         PRIMARY KEY(race_name)

);

CREATE TABLE character
(
    char_name           varchar(32)     not null,
    race_name           varchar(20)     not null,
    level               int             not null,
    experience          int             not null,
    alignment           varchar(20),
    background          varchar(32)     not null,
    gender              varchar(10)     not null,
    prof_bonus          int             not null,
    strength            int             not null,
    dexterity           int             not null,
    constitution        int             not null,
    intelligence        int             not null,
    wisdom              int             not null,
    charisma            int             not null,
    inspiration         boolean,
    player_nickname     varchar(32)     not null,
    CONSTRAINT  character_pk    PRIMARY KEY(char_name),
    CONSTRAINT  character_fk1   FOREIGN KEY(player_nickname)
                REFERENCES      player(player_nickname)
                ON UPDATE       CASCADE ON DELETE CASCADE,
    CONSTRAINT  character_fk2   FOREIGN KEY(race_name)
                REFERENCES      race(race_name)
                ON UPDATE       CASCADE ON DELETE CASCADE
);

CREATE TABLE appearance
(
    char_name   varchar(32)         not null,
    height      int,                -- in cm
    weight      int,                -- in kg
    hair        varchar(50),
    eyes        varchar(20),
    age         int,
    skin        varchar(20),
    CONSTRAINT  char_appearance     FOREIGN KEY(char_name)
                REFERENCES          character(char_name)
                ON UPDATE           CASCADE ON DELETE CASCADE
);

CREATE TABLE class
(
    class_name          varchar(16)     not null,
    starting_items      varchar(200),
    hitdice             varchar(4)      not null,
    CONSTRAINT          class_pk        PRIMARY KEY(class_name)
);

CREATE TABLE char_class
(
    char_name   varchar(32)     not null,
    class_name  varchar(16)     not null,
    class_level int             not null,
    CONSTRAINT  char_class_fk1   FOREIGN KEY(char_name)
                REFERENCES      character(char_name)
                ON UPDATE       CASCADE ON DELETE CASCADE,
    CONSTRAINT  char_class_fk2   FOREIGN KEY(class_name)
                REFERENCES      class(class_name)
                ON UPDATE       CASCADE ON DELETE CASCADE
);

CREATE TABLE race_feature
(
    race_name       varchar(20)         not null,
    feat_name       varchar(32)         not null,
    feat_desc       varchar(1000)        not null,
    CONSTRAINT      race_feature_pk     PRIMARY KEY(race_name, feat_name),
    CONSTRAINT      race_feature_fk     FOREIGN KEY(race_name)
                    REFERENCES          race(race_name)
                    ON UPDATE           CASCADE ON DELETE CASCADE
);

CREATE TABLE class_feature
(
    class_name      varchar(16)     not null,
    feat_name       varchar(32)     not null,
    feat_desc       varchar(1000)    not null,
    feat_level      int             not null,
    CONSTRAINT      class_feature_pk    PRIMARY KEY(feat_name),
    CONSTRAINT      class_feature_fk    FOREIGN KEY(class_name)
                REFERENCES          class(class_name)
                ON UPDATE           CASCADE ON DELETE CASCADE
);

CREATE TABLE spell
(
    spell_name      varchar(32)     not null,
    spell_lvl       int             not null,
    casting_time    varchar(16)     not null,
    spell_range     varchar(32)     not null,
    components      varchar(200),
    duration        varchar(20),
    school          varchar(20)     not null,
    spell_desc      varchar(1000)    not null,
    spell_target    varchar(32)     not null,
    concentration   boolean         not null,
    ritual          boolean         not null,
    CONSTRAINT      spell_pk        PRIMARY KEY(spell_name)
);

CREATE TABLE spell_class
(
    spell_name      varchar(32)         not null,
    class_name      varchar(16)         not null,
    CONSTRAINT      spell_class_fk1      FOREIGN KEY(spell_name)
                    REFERENCES          spell(spell_name)
                    ON UPDATE           CASCADE ON DELETE CASCADE,
    CONSTRAINT      spell_class_fk2      FOREIGN KEY(class_name)
                    REFERENCES          class(class_name)
                    ON UPDATE           CASCADE ON DELETE CASCADE
);

CREATE TABLE proficiency
(
    prof_name           varchar(32)     not null,
    prof_type           varchar(16)     not null,
    CONSTRAINT          proficiency_pk  PRIMARY KEY(prof_name)
);

CREATE TABLE proficient_in
(
    char_name           varchar(32)     not null,
    prof_name           varchar(32)     not null,
    CONSTRAINT          char_fk         FOREIGN KEY(char_name)
                        REFERENCES      character(char_name)
                        ON UPDATE       CASCADE ON DELETE CASCADE,
    CONSTRAINT          prof_in_fk      FOREIGN KEY(prof_name)
                        REFERENCES      proficiency(prof_name)
                        ON UPDATE       CASCADE ON DELETE CASCADE
);

CREATE TABLE item
(
    item_name           varchar(64)     not null,
    nr_of_uses          int,
    item_weight         float           not null, --pounds
    item_value          varchar(15),
    item_desc           varchar(1000),
    item_type           varchar(20)     not null,
    CONSTRAINT          item_pk         PRIMARY KEY(item_name)
);

CREATE TABLE item_copy
(
    copy_id             int             not null,
    item_name           varchar(64)     not null,
    char_name           varchar(32)     not null,
    amount              int,                                            -- if the amount is null, then each copy of the item has to be treated separately 
    item_state          varchar(32),                                    -- for some copies we dont have to keep track of state, especially if it's an "item group" ie. arrows
    CONSTRAINT          item_copy_pk    PRIMARY KEY(copy_id, char_name),
    CONSTRAINT          item_copy_fk    FOREIGN KEY(item_name)
                        REFERENCES      item(item_name)
                        ON UPDATE       CASCADE ON DELETE CASCADE,
    CONSTRAINT          copy_owner_fk   FOREIGN KEY(char_name)
                        REFERENCES      character(char_name)
                        ON UPDATE       CASCADE ON DELETE CASCADE
);