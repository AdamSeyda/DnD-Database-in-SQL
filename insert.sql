SET client_encoding='utf-8';

INSERT INTO 
    player (player_nickname)
VALUES 
    ('Vir'),
    ('Jezioro'),
    ('Drew'),
    ('Rob'),
    ('Bob'),
    ('Snob');

INSERT INTO
    race (race_name, size, life_span, speed)
VALUES
    ('Leonin', 'Medium', '50-100', 35),
    ('Aasimar', 'Medium', '120-160', 30),
    ('Human', 'Medium', '50-100', 30),
    ('Hill Dwarf', 'Medium', '300-350', 25),
    ('High Elf', 'Medium', '700-800', 30),
    ('Lightfoot Halfling', 'Small', '100-150', 25);

INSERT INTO
    character (char_name, race_name, level, experience, alignment, background, gender, prof_bonus, player_nickname, strength, dexterity, constitution, intelligence, wisdom, charisma, inspiration)
VALUES
    ('Alejandor', 'Leonin', 4, 2975, 'True Neutral', 'House of Bear', 'Male', 2, 'Jezioro', 16, 13, 16, 8, 10, 12, false),
    ('Sucre', 'Aasimar', 3, 1795, 'Lawful Good', 'House of Phoenix', 'Female', 2, 'Vir', 13, 9, 17, 13, 7, 17, false),
    ('Mianeska', 'Human', 4, 2975, 'Chaotic Neutral', 'House of Viper', 'Female', 2, 'Drew', 9, 14, 10, 6, 11, 16, false),
    ('Thornin', 'Hill Dwarf', 2, 425, 'Neutral Good', 'Folk Hero', 'Male', 2, 'Rob', 16, 7, 13, 14, 12, 13, true),
    ('Legolan', 'High Elf', 10, 77777, 'Chaotic Good', 'Far Traveler', 'Male', 4, 'Bob', 5, 20, 14, 18, 18, 12, false),
    ('Bango Baldins', 'Lightfoot Halfling', 1, 0, 'Lawful Evil', 'Criminal', 'Male', 2, 'Snob', 10, 10, 12, 12, 8, 19, true);

INSERT INTO
    appearance (char_name, height, weight, hair, eyes, age, skin)
VALUES
    ('Alejandor', 231, 157, 'auburn', 'yellow', 32, 'tan'),
    ('Sucre', 160, 65, 'long, braided, dark', 'black', 24, 'brown'),
    ('Mianeska', 172, 80, 'long, blonde', 'orange', 23, 'pale'),
    ('Thornin', 120, 95, 'long, black', 'light brown', 101, 'tan'),
    ('Legolan', 196, 72, 'long, blonde', 'emerald green', 222, 'pale'),
    ('Bango Baldins', 66, 66, 'none', 'one, red', 66, 'white');

INSERT INTO
    class (class_name, hitdice)
VALUES
    ('Fighter', '1d10'),
    ('Rogue', '1d8'),
    ('Sorcerer', '1d6'),
    ('Wizard', '1d6'),
    ('Warlock', '1d8'),
    ('Cleric', '1d8');

INSERT INTO
    char_class (char_name, class_name, class_level)
VALUES
    ('Alejandor', 'Fighter', 4),
    ('Sucre', 'Sorcerer', 3),
    ('Sucre', 'Wizard', 1),
    ('Mianeska', 'Rogue', 4),
    ('Thornin', 'Fighter', 2),
    ('Legolan', 'Wizard', 7),
    ('Legolan', 'Sorcerer', 1),
    ('Legolan', 'Fighter', 2),
    ('Bango Baldins', 'Cleric', 1);

INSERT INTO
    race_feature (race_name, feat_name, feat_desc)
VALUES
    ('Leonin', 'Darkvision', 'You can see in dim light within 60 feet of you as if it were bright light and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.'),
    ('Leonin', 'Claws', 'Your claws are natural weapons, which you can use to make unarmed strikes. If you hit with them, you can deal slashing damage equal to 1d4 + your Strength modifier.'),
    ('Leonin','Hunters Instincts', 'You have proficiency in one of the following skills of your choice: Athletics, Intimidation, Perception, or Survival.'),
    ('Leonin', 'Daunting Roar', 'As a bonus action, you can let out an especially menacing roar. Creatures of your choice within 10 feet of you that can hear you must succeed on a Wisdom saving throw or become frightened of you until the end of your next turn. The DC of the save equals 8 + your proficiency bonus + your Constitution modifier. Once you use this trait, you can’t use it again until you finish a short or long rest.'),
    ('Leonin', 'Languages', 'You can speak, read, and write Common and Leonin.'),
    ('Leonin', 'Speed', 'Your base walking speed is 35 feet.'),
    ('Aasimar', 'Darkvision', 'Blessed with a radiant soul, your vision can easily cut through darkness. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You cant discern color in darkness, only shades of gray.'),
    ('Aasimar', 'Celestial Resistance', 'You have resistance to necrotic damage and radiant damage.'),
    ('Aasimar', 'Healing Hands', 'As an action, you can touch a creature and cause it to regain a number of hit points equal to your level. Once you use this trait, you cant use it again until you finish a long rest.'),
    ('Aasimar', 'Light Bearer', 'You know the Light cantrip. Charisma is your spellcasting ability for it.'),
    ('Aasimar', 'Languages', 'You can speak, read, and write Common and Celestial.'),
    ('Human', 'Languages', 'You can speak, read, and write Common and one extra language of your choice. Humans typically learn the languages of other peoples they deal with, including obscure dialects. They are fond of sprinkling their speech with words borrowed from other tongues: Orc curses, Elvish musical expressions, Dwarvish military phrases, and so on.'),
    ('Human', 'Ability Score Increase', 'Your ability scores each increase by 1.');

INSERT INTO
    class_feature (class_name, feat_name, feat_desc, feat_level)
VALUES
    ('Fighter', 'Dueling', 'When you are wielding a melee weapon in one hand and no other Weapons, you gain a +2 bonus to Damage Rolls with that weapon.', 1),
    ('Fighter', 'Second Wind', 'You have a limited well of stamina that you can draw on to protect yourself from harm. On Your Turn, you can use a Bonus Action to regain Hit Points equal to 1d10 + your Fighter level. Once you use this feature, you must finish a short or Long Rest before you can use it again.', 1),
    ('Fighter', 'Action Surge', 'Starting at 2nd Level, you can push yourself beyond your normal limits for a moment. On Your Turn, you can take one additional action on top of your regular action and a possible Bonus Action. Once you use this feature, you must finish a short or Long Rest before you can use it again. Starting at 17th level, you can use it twice before a rest, but only once on the same turn.', 2),
    ('Sorcerer', 'Spellcasting', 'An event in your past, or in the life of a parent or ancestor, left an indelible mark on you, infusing you with arcane magic. This font of magic, whatever its origin, fuels your spells.', 1),
    ('Sorcerer', 'Sorcerous Origin', 'Choose a sorcerous origin, which describes the source of your innate magical power. Your choice grants you features when you choose it at 1st level and again at 6th, 14th, and 18th level.', 1),
    ('Sorcerer', 'Font of Magic', 'At 2nd level, you tap into a deep wellspring of magic within yourself. This wellspring is represented by sorcery points, which allow you to create a variety of magical effects.',2),
    ('Rogue', 'Expertise', 'At 1st level, choose two of your skill Proficiencies, or one of your skill Proficiencies and your proficiency with Thieves Tools. Your Proficiency Bonus is doubled for any ability check you make that uses either of the chosen Proficiencies.', 1),
    ('Rogue', 'Sneak Attack', 'Beginning at 1st level, you know how to strike subtly and exploit a foes distraction. Once per turn, you can deal an extra 1d6 damage to one creature you hit with an Attack if you have advantage on the Attack roll. The Attack must use a Finesse or a ranged weapon. You dont need advantage on the Attack roll if another enemy of the target is within 5 feet of it, that enemy isnt Incapacitated, and you dont have disadvantage on the Attack roll. The amount of the extra damage increases as you gain levels in this class, as shown in the Sneak Attack column of the Rogue table.', 1),
    ('Rogue', 'Cunning Action', 'Starting at 2nd Level, your quick thinking and agility allow you to move and act quickly. You can take a Bonus Action on each of your turns in Combat. This action can be used only to take the Dash, Disengage, or Hide action.', 2);

INSERT INTO
    spell (spell_name, spell_lvl , casting_time, spell_range, components, duration, school, spell_target, concentration, ritual, spell_desc)
VALUES
    ('Light', 0, '1 Action', 'Touch', 'Verbal, Material (a firefly or phosphorescent moss)', '1 hour', 'Evocation', 'Object', false, false, 'You touch one object that is no larger than 10 feet in any dimension. Until the spell ends, the object sheds bright light in a 20-foot radius and dim light for an additional 20 feet. The light can be colored as you like. Completely covering the object with something opaque blocks the light. The spell ends if you cast it again or dismiss it as an action. If you target an object held or worn by a hostile creature, that creature must succeed on a Dexterity saving throw to avoid the spell.'),
    ('Ice Knife', 1, '1 Action', '60 ft', 'Somatic, Material (a drop of water or piece of ice)', NULL, 'Conjuration', '1 Creature', false, false, 'You create a shard of ice and fling it at one creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 piercing damage. Hit or miss, the shard then explodes. The target and each creature within 5 feet of the point where the ice exploded must succeed on a Dexterity saving throw or take 2d6 cold damage. When you cast this spell using a spell slot of 2nd level or higher, the cold damage increases by 1d6 for each slot level above 1st.'),
    ('Crown of Madness', 2, '1 Action', '120 ft', 'Verbal, Somatic', '1 min', 'Enchantment', '1 Humanoid', true, false, 'One humanoid of your choice that you can see within range must succeed on a Wisdom saving throw or become charmed by you for the duration. While the target is charmed in this way, a twisted crown of jagged iron appears on its head, and a madness glows in its eyes. The charmed target must use its action before moving on each of its turns to make a melee attack against a creature other than itself that you mentally choose. The target can act normally on its turn if you choose no creature or if none are within its reach. On your subsequent turns, you must use your action to maintain control over the target, or the spell ends. Also, the target can make a Wisdom saving throw at the end of each of its turns. On a success, the spell ends.'),
    ('Mass Heal', 9, '1 Action', '60 ft', 'Verbal, Somatic', NULL, 'Evocation', 'Multiple Creatures', false, false, 'A flood of healing energy flows from you into injured creatures around you. You restore up to 700 hit points, divided as you choose among any number of creatures that you can see within range. Creatures healed by this spell are also cured of all diseases and any effect making them blinded or deafened. This spell has no effect on undead or constructs.'),
    ('Gentle Repose', 2, '1 Action', 'Touch', 'Verbal, Somatic, Material (a pinch of salt and one copper piece placed on each of the corpse’s eyes, which must remain there for the duration)', '10 days', 'Necromancy', '1 Creature', false, true, 'You touch a corpse or other remains. For the duration, the target is protected from decay and can’t become undead. The spell also effectively extends the time limit on raising the target from the dead, since days spent under the influence of this spell don’t count against the time limit of spells such as raise dead.'),
    ('Prayer of Healing', 2, '10 minutes', '30 ft', 'Verbal', NULL, 'Evocation', 'Max 6 Creatures', false, false, 'Up to six creatures of your choice that you can see within range each regain hit points equal to 2d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs. When you cast this spell using a spell slot of 3rd level or higher, the healing increases by 1d8 for each slot level above 2nd.');

INSERT INTO
    spell_class (spell_name, class_name)
VALUES
    ('Light', 'Sorcerer'),
    ('Light', 'Wizard'),
    ('Ice Knife', 'Sorcerer'),
    ('Ice Knife', 'Wizard'),
    ('Crown of Madness', 'Sorcerer'),
    ('Crown of Madness', 'Wizard'),
    ('Crown of Madness', 'Warlock');

INSERT INTO
    proficiency (prof_name, prof_type)
VALUES
    ('Strength Save', 'Saving Throw'),
    ('Dexterity Save', 'Saving Throw'),
    ('Acrobatics', 'Skill'),
    ('Intimidation', 'Skill'),
    ('Stealth', 'Skill'),
    ('Heavy Armor', 'Armor'),
    ('Shields', 'Armor'),
    ('Common', 'Language'),
    ('Leonin', 'Language'),
    ('Longsword', 'Weapon'),
    ('Herbalism Kit', 'Tool');

INSERT INTO
    proficient_in (char_name, prof_name)
VALUES
    ('Alejandor', 'Strength Save'),
    ('Alejandor', 'Dexterity Save'),
    ('Alejandor', 'Acrobatics'),
    ('Alejandor', 'Intimidation'),
    ('Alejandor', 'Heavy Armor'),
    ('Alejandor', 'Common'),
    ('Alejandor', 'Leonin'),
    ('Alejandor', 'Longsword'),
    ('Alejandor', 'Herbalism Kit'),
    ('Sucre', 'Intimidation'),
    ('Sucre', 'Common'),
    ('Sucre', 'Herbalism Kit'),
    ('Mianeska', 'Dexterity Save'),
    ('Mianeska', 'Acrobatics'),
    ('Mianeska', 'Stealth'),
    ('Mianeska', 'Common'),
    ('Mianeska', 'Herbalism Kit');

INSERT INTO
    item (item_name, nr_of_uses, item_weight, item_value, item_type, item_desc)
VALUES
    ('Longsword', NULL, 3, '15 GP', 'Martial Weapon', NULL),
    ('Herbalism Kit', NULL, 3, '5 GP', 'Tool', 'This kit contains a variety of instruments such as clippers, mortar and pestle, and pouches and vials used by herbalists to create remedies and potions. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to identify or apply herbs. Also, proficiency with this kit is required to create antitoxin and any potion of healing.'),
    ('Piton', NULL, 0.25, '15 CP', 'Adventuring Gear', 'When a wall doesn’t offer handholds and footholds, you can make your own. A piton is a steel spike with an eye through which you can loop a rope.'),
    ('Chainmail', NULL, 55, '75 GP', 'Heavy Armor', NULL),
    ('Iron Shield', NULL, 10, '10 GP', 'Shield', NULL),
    ('Potion of Healing', 1, 0.5, '10 SP', 'Potion', 'You regain 2d4+2 Hit Points when you drink this potion. Whatever its potency, the potion’s red liquid glimmers when agitated.');

INSERT INTO
    item_copy(copy_id, item_name, char_name, amount, item_state)
VALUES
    (1, 'Longsword', 'Alejandor', NULL, 'Good'),
    (2, 'Herbalism Kit', 'Alejandor', NULL, 'Broken'),
    (3, 'Longsword', 'Alejandor', NULL, 'Damaged'),
    (1, 'Piton', 'Mianeska', 5, NULL),
    (2, 'Herbalism Kit', 'Mianeska', NULL, 'Good'),
    (1, 'Potion of Healing', 'Legolan', 3, NULL);