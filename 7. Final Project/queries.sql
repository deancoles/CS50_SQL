-- SELECTs
SELECT * FROM player;
SELECT * FROM characters;
SELECT * FROM quest;
SELECT * FROM item;
SELECT * FROM faction;

-- Add inventory for Kaelen Stormward
INSERT INTO inventory (inventory_name, inventory_description)
VALUES ('KaelenStormwardInventory', 'Inventory of Kaelen Stormward');

-- Add new character (assumes new inventory_id = 11)
INSERT INTO characters (
  player_id, inventory_id, class_id, species_id, level_id,
  alignment_id, region_id, character_type_id, character_forename,
  character_surname, character_alias
) VALUES (
  1, 11, 3, 2, 5, 1, 4, 1, 'Kaelen', 'Stormward', 'The Thunderblade'
);

-- New quests
INSERT INTO quest (quest_id, quest_name, region_id, difficulty_id, quest_description) VALUES
(11, 'Siege of Emberhold', 7, 4, 'Defend the Emberhold fortress against waves of invaders.'),
(12, 'Curse of the Glimmering Lake', 5, 2, 'Investigate the supernatural events at Glimmering Lake.'),
(13, 'The Forgotten Tomb', 1, 5, 'Delve deep into a lost tomb filled with traps and treasures.');

-- New items
INSERT INTO item (item_id, item_name, item_type_id, rarity_id, item_description) VALUES
(11, 'Helm of Insight', 3, 4, 'A helmet that grants the wearer brief glimpses of the future.'),
(12, 'Boots of the Wild', 3, 2, 'Allows the wearer to move silently through any terrain.'),
(13, 'Wand of Whispers', 6, 1, 'Emits eerie voices to distract and disorient foes.');

-- New inventory items (assumes inventory_id = 11)
INSERT INTO inventory_item (inventory_id, item_id) VALUES
(11, 11),
(11, 12),
(11, 13);

-- Rename alias
UPDATE characters
SET character_alias = 'Shadowreaver'
WHERE character_forename = 'Kaelen' AND character_surname = 'Stormward';

-- Change quest difficulty
UPDATE quest
SET difficulty_id = 3
WHERE quest_name = 'Curse of the Glimmering Lake';

-- Remove item from Kaelen’s inventory
DELETE FROM inventory_item
WHERE inventory_id = 11 AND item_id = 13;

-- Remove Kaelen Stormward character
DELETE FROM characters
WHERE character_forename = 'Kaelen' AND character_surname = 'Stormward';

-- Remove unused inventory of deleted character
DELETE FROM inventory
WHERE inventory_id = 11;

-- Quest summary by region/difficulty
CREATE OR REPLACE VIEW quest_summary_view AS
SELECT quest_name, region_name, difficulty_name
FROM quest
JOIN region ON quest.region_id = region.region_id
JOIN difficulty ON quest.difficulty_id = difficulty.difficulty_id;

-- Quests in Balewood City
SELECT * FROM quest_summary_view
WHERE region_name = 'BalewoodCity';

-- Top 3 characters by quest participation
SELECT CONCAT(character_forename, ' ', character_surname) AS character_name, COUNT(quest_id) AS quests_completed
FROM characters
JOIN character_quest ON characters.character_id = character_quest.character_id
GROUP BY characters.character_id
ORDER BY quests_completed DESC
LIMIT 3;

-- Characters and their factions
SELECT CONCAT(character_forename, ' ', character_surname) AS character_name, faction_name
FROM characters
JOIN character_faction ON characters.character_id = character_faction.character_id
JOIN faction ON character_faction.faction_id = faction.faction_id;

-- Player character counts
SELECT CONCAT(player_forename, ' ', player_surname) AS player_name, COUNT(character_id) AS total_characters
FROM player
LEFT JOIN characters ON player.player_id = characters.player_id
GROUP BY player.player_id;

-- Characters per alignment
SELECT alignment_name, COUNT(character_id) AS total_characters
FROM alignment
LEFT JOIN characters ON alignment.alignment_id = characters.alignment_id
GROUP BY alignment_name
ORDER BY total_characters DESC;

-- Most common item type in inventories
SELECT item_type_name, COUNT(*) AS count
FROM inventory_item
JOIN item ON inventory_item.item_id = item.item_id
JOIN item_type ON item.item_type_id = item_type.item_type_id
GROUP BY item_type_name
ORDER BY count DESC
LIMIT 1;
