------------------------------------- Tables -------------------------------------

-- Characters: Represent an existing character
CREATE TABLE "characters" (
    "id" INT,
    "name" TEXT NOT NULL UNIQUE,
    "level" INT NOT NULL DEFAULT 1,
    "exp" INT NOT NULL DEFAULT 0,
    "str" INT NOT NULL CHECK ("str" <= 20),
    "dex" INT NOT NULL CHECK ("dex" <= 20),
    "con" INT NOT NULL CHECK ("con" <= 20),
    "int" INT NOT NULL CHECK ("int" <= 20),
    "wis" INT NOT NULL CHECK ("wis" <= 20),
    "cha" INT NOT NULL CHECK ("cha" <= 20),
    PRIMARY KEY ("id")
);

-- Level_up_req: Store experience score required to level up
CREATE TABLE "level_up_req" (
    "id" INT,
    "level" INT NOT NULL UNIQUE CHECK ("level" <= 20 AND "level" >= 1),
    "req_exp" INT NOT NULL,
    PRIMARY KEY ("id")
);

-- Class: Reqpresent available classes
CREATE TABLE "classes" (
    "id" INT,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);

-- Items: Represent all existing items that can be found and used
CREATE TABLE "items" (
    "id" INT,
    "name" TEXT NOT NULL UNIQUE,
    "type" TEXT NOT NULL,
    "weight" INT NOT NULL,
    PRIMARY KEY ("id")
);

-- Spells: Represent every existing spell
CREATE TABLE "spells" (
    "id" INT,
    "name" TEXT NOT NULL UNIQUE,
    "type" TEXT NOT NULL,
    "descripton" TEXT NOT NULL,
    "check" TEXT NOT NULL CHECK ("check" IN ("str", "dex", "con", "int", "wis", "cha")),
    "req_lvl" INT NOT NULL DEFAULT 1,
    PRIMARY KEY ("id")
);

-- Character_class: Represent each character's class(es)
CREATE TABLE "character_classes" (
    "id" INT,
    "character_id" INT NOT NULL,
    "class_id" INT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("character_id") REFERENCES "characters" ("id"),
    FOREIGN KEY ("class_id") REFERENCES "classes" ("id")
);

-- Inventories: Represent each character's inventory
CREATE TABLE "inventories" (
    "id" INT,
    "character_id" INT NOT NULL,
    "item_id" INT NOT NULL,
    "quantity" INT NOT NULL DEFAULT 1,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("character_id") REFERENCES "characters" ("id"),
    FOREIGN KEY ("item_id") REFERENCES "items" ("id")
);

-- Equipments: Represent each character's equipments
CREATE TABLE "equipments" (
    "id" INT,
    "character_id" INT NOT NULL,
    "item_id" INT NOT NULL,
    "slot" TEXT NOT NULL CHECK ("slot" IN ("helmet", "shoulders", "cape/back", "torso", "belt", "greaves", "boots", "gloves", "ring_1", "ring_2", "necklace", "trinket_1", "trinket_2", "weapon_1", "weapon_2")),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("character_id") REFERENCES "characters" ("id"),
    FOREIGN KEY ("item_id") REFERENCES "items" ("id")
);

-- Class spells: Represent each class's spells
CREATE TABLE "class_spells" (
    "id" INT,
    "class_id" INT NOT NULL,
    "spell_id" INT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("class_id") REFERENCES "classes" ("id"),
    FOREIGN KEY ("spell_id") REFERENCES "spells" ("id")
);

-- Learned spells: Represent each character's learned spells
CREATE TABLE "learned_spells" (
    "id" INT,
    "character_id" INT NOT NULL,
    "spell_id" INT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("character_id") REFERENCES "characters" ("id"),
    FOREIGN KEY ("spell_id") REFERENCES "spells" ("id")
);

------------------------------------- Indexes -------------------------------------

-- Search for spells
CREATE INDEX "search_spells" ON "aspells" ("id", "name");

-- Search spells based on class
CREATE INDEX "search_spells_for_class" ON "class_spells" ("class_id", "spell_id");

-- Search for items
CREATE INDEX "search_items" ON "items" ("name");

-- Search inventory
CREATE INDEX "search_inventory" ON "inventories" ("character_id", "item_id");

------------------------------------- Triggers -------------------------------------

-- Prevent player from equiping items that are not in their inventory
CREATE TRIGGER "check_inventory_existence"
BEFORE INSERT ON "equipments"
FOR EACH ROW
WHEN NOT EXISTS (
    SELECT 1 FROM "inventories"
    WHERE "character_id" = NEW."character_id" AND "item_id" = NEW."item_id"
)
BEGIN
    SELECT RAISE (ABORT, 'This item does not exist in inventory.');
END;

-- Prevent player from equiping inappropriate item to equipment slot
CREATE TRIGGER "check_item_type_match_equip_slot"
BEFORE INSERT ON "equipments"
FOR EACH ROW
WHEN NOT EXISTS (
    SELECT 1 FROM "items"
    WHERE "id" = NEW."item_id" AND "type" LIKE '%' || NEW.slot || '%'
)
BEGIN
    SELECT RAISE (ABORT, 'Item cannot be equiped into this slot.');
END;

-- Prevent player from equiping more than 1 item to the same slot
CREATE TRIGGER "prevent_invalid_equip"
BEFORE INSERT ON "equipments"
FOR EACH ROW
WHEN EXISTS (
    SELECT 1 FROM "equipments"
    WHERE "character_id" = NEW."character_id" AND "slot" = NEW."slot"
)
BEGIN
    SELECT RAISE (ABORT, 'Character already has a ' || NEW."slot" || '. Please remove it before adding a new one.');
END;

-- Automatically update player level based on their exp
CREATE TRIGGER "update_character_level"
AFTER UPDATE OF "exp" ON "characters"
FOR EACH ROW
BEGIN
    UPDATE "characters"
    SET "level" = (
        SELECT MAX("level")
        FROM "level_up_req"
        WHERE "req_exp" <= NEW."exp"
    )
    WHERE "id" = NEW."id";
END;

-- Prevent character from learning spell that is not within their class
CREATE TRIGGER "check_spell_in_class"
BEFORE INSERT ON "learned_spells"
FOR EACH ROW
WHEN NOT EXISTS (
    SELECT 1 FROM (
        SELECT "spell_id" FROM "class_spells"
        WHERE "class_id" = (
            SELECT "class_id" FROM "character_classes"
            WHERE "character_id" = NEW."character_id"
        )
    ) AS "temp"
    WHERE "temp"."spell_id" = NEW."spell_id"
)
BEGIN
    SELECT RAISE (ABORT, 'Character cannot learn this spell due to their class.');
END;

-- Prevent character from learning spell that required higher level than character's current level
CREATE TRIGGER "check_spell_req_level"
BEFORE INSERT ON "learned_spells"
FOR EACH ROW
WHEN NOT EXISTS (
    SELECT 1 FROM "spells"
    WHERE "id" = NEW."spell_id"
    AND "req_lvl" <= (
        SELECT "level" FROM "characters"
        WHERE "id" = NEW."character_id"
    )
)
BEGIN
    SELECT RAISE (ABORT, 'Character is underleveled to learn this spell.');
END;
