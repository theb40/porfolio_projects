-- Checking your character's level
SELECT "name", "level", "exp"
FROM "characters"
WHERE "name" = 'Jester Lavorre'
;

-- Checking spells that you can learn at your character's level
SELECT "name", "type", "description", "check" FROM "spells"
WHERE "id" = (
    SELECT "spell_id" FROM "class_spells"
    WHERE "class_id" = (
        SELECT "class_id" FROM "character_classes"
        WHERE "character_id" = (
            SELECT "id" FROM "characters"
            WHERE "name" = 'Yasha Nydoorin'
        )
    )
)
AND "req_lvl" <= (
    SELECT "level" FROM "characters"
    WHERE "name" = 'Yasha Nydoorin'
);

-- Checking your inventory and weight
SELECT
    "itm"."name",
    "inv"."quantity",
    ("itm"."weight" * "inv"."quantity") AS "total_weight"
FROM "characters" AS "c" JOIN "inventories" AS "inv"
    ON "c"."id" = "inv"."character_id"
    JOIN "items" AS "itm" ON "inv"."item_id" = "itm"."id"
WHERE
    "c"."name" = 'Scanlan Shorthalt'
;

-- Equipping item
INSERT INTO "equipments" ("character_id", "item_id", "slot")
VALUES(
    (SELECT "id" FROM "characters" WHERE "name" = 'Laudna'),
    (SELECT "id" FROM "items" WHERE "name" = 'Ring of protection'),
    'ring_1'
);

-- You defeated a dragon and gained some exp!
UPDATE "experiences"
SET "exp_score" = "exp_score" + 12000
WHERE "character_id" = (
    SELECT "id" FROM "characters"
    WHERE "name" = 'Grog Strongjaw'
);

-- Browse your inventories for weapon
SELECT * FROM "inventories"
WHERE "type" LIKE 'weapon%'
AND "character_id" = (
    SELECT "id" FROM "characters"
    WHERE "name" = 'Mollymauk Tealeaf'
);


-- Decide who will persuade the boss to spare the party
SELECT "name" FROM "characters"
WHERE "cha" = (
    SELECT MAX("cha") FROM "characters"
);

-- The boss can only be killed by hitting him with the same spell twice, checking if there is any spell that the next 2 party members can both use
SELECT "name" FROM "spells"
WHERE "id" = (
    SELECT "spell_id" FROM "learned_spells"
    WHERE "character_id" = (
        SELECT "id" FROM "characters"
        WHERE "name" = 'Yasha Nydoorin'
    )
)
INTERSECT
SELECT "name" FROM "spells"
WHERE "id" = (
    SELECT "spell_id" FROM "learned_spells"
    WHERE "character_id" = (
        SELECT "id" FROM "characters"
        WHERE "name" = 'Essek Thelyss'
    )
);


