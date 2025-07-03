-- Drop existing tables if they exist (for clean testing)
DROP TABLE IF EXISTS character_relationship, character_faction, character_quest, characters, player, quest, region, difficulty,
class, species, level, alignment, faction, relationship, character_type, inventory, item, item_type, rarity, inventory_item;

-- Create player table
CREATE TABLE player (
  player_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  player_forename VARCHAR(50) NOT NULL,
  player_surname VARCHAR(50) NOT NULL,
  player_dob DATE NOT NULL,
  player_email VARCHAR(50) NOT NULL,
  player_username VARCHAR(25) NOT NULL UNIQUE,
  player_password VARCHAR (25) NOT NULL,
  INDEX player_name (player_surname, player_forename)
);

-- Create character_type table
CREATE TABLE character_type (
  character_type_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  character_type_name VARCHAR(50) NOT NULL,
  character_type_description VARCHAR(100)
);

-- Create alignment table
CREATE TABLE alignment (
  alignment_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  alignment_name VARCHAR(50) NOT NULL,
  alignment_description VARCHAR(500)
);

-- Create class table
CREATE TABLE class (
  class_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  class_name VARCHAR(50) NOT NULL,
  class_description VARCHAR(500)
);

-- Create species table
CREATE TABLE species (
  species_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  species_name VARCHAR(50) NOT NULL,
  species_description VARCHAR(1000)
);

-- Create level table
CREATE TABLE level (
  level_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  level_name VARCHAR(50) NOT NULL,
  level_description VARCHAR(250)
);

-- Create region table
CREATE TABLE region (
  region_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  region_name VARCHAR(50) NOT NULL,
  region_description VARCHAR(1000)
);

-- Create difficulty table
CREATE TABLE difficulty (
  difficulty_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  difficulty_name VARCHAR(50) NOT NULL,
  difficulty_description VARCHAR(250)
);

-- Create faction table
CREATE TABLE faction (
  faction_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  faction_name VARCHAR(50) NOT NULL,
  faction_description VARCHAR(1000)
);

-- Create relationship table
CREATE TABLE relationship (
  relationship_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  relationship_name VARCHAR(50) NOT NULL,
  relationship_description VARCHAR(500)
);

-- Create inventory table
CREATE TABLE inventory (
  inventory_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  inventory_name VARCHAR(50),
  inventory_description VARCHAR(100)
);

-- Create item_type table
CREATE TABLE item_type (
  item_type_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  item_type_name VARCHAR(50) NOT NULL,
  item_type_description VARCHAR(250)
);

-- Create rarity table
CREATE TABLE rarity (
  rarity_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  rarity_name VARCHAR(50) NOT NULL,
  rarity_description VARCHAR (250)
);

-- Create item table
CREATE TABLE item (
  item_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  item_name VARCHAR(50) NOT NULL,
  item_type_id INT(11) UNSIGNED,
  rarity_id INT(11) UNSIGNED,
  item_description VARCHAR(250),
  FOREIGN KEY (item_type_id) REFERENCES item_type(item_type_id),
  FOREIGN KEY (rarity_id) REFERENCES rarity(rarity_id),
  INDEX item_type_rarity (item_type_id, rarity_id)
);

-- Create inventory_item junction table
CREATE TABLE inventory_item (
  inventory_item_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  inventory_id INT(11) UNSIGNED,
  item_id INT(11) UNSIGNED,
  FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
  FOREIGN KEY (item_id) REFERENCES item(item_id)
);

-- Create characters table
CREATE TABLE characters (
  character_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  player_id INT(11) UNSIGNED,
  character_surname VARCHAR(50) NOT NULL,
  character_forename VARCHAR(50) NOT NULL,
  character_alias VARCHAR(50),
  character_type_id INT(11) UNSIGNED,
  inventory_id INT(11) UNSIGNED,
  class_id INT(11) UNSIGNED,
  region_id INT(11) UNSIGNED,
  species_id INT(11) UNSIGNED,
  level_id INT(11) UNSIGNED,
  alignment_id INT(11) UNSIGNED,
  character_backstory VARCHAR (1000),
  FOREIGN KEY (player_id) REFERENCES player(player_id),
  FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
  FOREIGN KEY (class_id) REFERENCES class(class_id),
  FOREIGN KEY (species_id) REFERENCES species(species_id),
  FOREIGN KEY (level_id) REFERENCES level(level_id),
  FOREIGN KEY (alignment_id) REFERENCES alignment(alignment_id),
  FOREIGN KEY (region_id) REFERENCES region(region_id),
  FOREIGN KEY (character_type_id) REFERENCES character_type(character_type_id),
  INDEX character_name (character_surname, character_forename),
  INDEX character_player (player_id)
);

-- Create quest table
CREATE TABLE quest (
  quest_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  quest_name VARCHAR(100) NOT NULL,
  region_id INT(11) UNSIGNED,
  difficulty_id INT(11) UNSIGNED,
  quest_description VARCHAR(1000),
  FOREIGN KEY (region_id) REFERENCES region(region_id),
  FOREIGN KEY (difficulty_id) REFERENCES difficulty(difficulty_id),
  INDEX quest_region_difficulty (region_id, difficulty_id)
);

-- Create character_faction junction table
CREATE TABLE character_faction (
  character_faction_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  character_id INT(11) UNSIGNED,
  faction_id INT(11) UNSIGNED,
  FOREIGN KEY (character_id) REFERENCES characters(character_id),
  FOREIGN KEY (faction_id) REFERENCES faction(faction_id)
);

-- Create character_quest junction table
CREATE TABLE character_quest (
  character_quest_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  character_id INT(11) UNSIGNED,
  quest_id INT(11) UNSIGNED,
  FOREIGN KEY (character_id) REFERENCES characters(character_id),
  FOREIGN KEY (quest_id) REFERENCES quest(quest_id),
  INDEX char_quest (quest_id)
);

-- Create character_relationship table
CREATE TABLE character_relationship (
  character_relationship_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  character_id_1 INT(11) UNSIGNED,
  character_id_2 INT(11) UNSIGNED,
  relationship_id INT(11) UNSIGNED,
  FOREIGN KEY (character_id_1) REFERENCES characters(character_id),
  FOREIGN KEY (character_id_2) REFERENCES characters(character_id),
  FOREIGN KEY (relationship_id) REFERENCES relationship(relationship_id)
);
