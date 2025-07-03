-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: caves_and_creatures
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alignment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alignment` (
  `alignment_id` int unsigned NOT NULL AUTO_INCREMENT,
  `alignment_name` varchar(50) NOT NULL,
  `alignment_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alignment`
--

LOCK TABLES `alignment` WRITE;
/*!40000 ALTER TABLE `alignment` DISABLE KEYS */;
INSERT INTO `alignment` VALUES (1,'LawfulGood','Characters who uphold law and order while promoting the greater good. They believe in doing what is right, following rules, and helping others within the framework of established laws and codes of conduct.'),(2,'NeutralGood','Characters who prioritize doing good deeds and helping others, but without being bound by strict adherence to laws or personal codes. They act altruistically and strive to make positive impacts on the world.'),(3,'ChaoticGood','Characters who value personal freedom and individualism, often rebelling against authority or societal norms to do what they believe is right. They may employ unconventional or unpredictable methods to achieve their goals.'),(4,'LawfulNeutral','Characters who prioritize order, structure, and adherence to laws or codes without necessarily being concerned with moral considerations. They may serve as enforcers of laws or strict adherents to traditions and regulations.'),(5,'TrueNeutral','Characters who maintain a balance between good and evil, law and chaos. They often act in their self-interest or pursue personal goals without significant regard for moral or ethical considerations.'),(6,'ChaoticNeutral','Characters who prioritize personal freedom and individualism above all else. They may act impulsively, unpredictably, or selfishly, pursuing their own desires or goals without concern for laws, rules, or the well-being of others.'),(7,'LawfulEvil','Characters who prioritize order and control while exploiting others for personal gain or advancing their own agendas. They may use legal or hierarchical systems to oppress or manipulate others, often adhering to strict codes of conduct to achieve their nefarious goals.'),(8,'NeutralEvil','Characters who are primarily concerned with their own interests and are willing to harm others to achieve their goals. They lack the strict adherence to laws or codes of conduct seen in lawful evil characters and may act in a more opportunistic or self-serving manner.'),(9,'ChaoticEvil','Characters who revel in chaos, destruction, and the infliction of suffering. They have little regard for laws, morality, or the well-being of others, instead embracing anarchy and mayhem to satisfy their own desires or whims.');
/*!40000 ALTER TABLE `alignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_faction`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_faction` (
  `character_faction_id` int unsigned NOT NULL AUTO_INCREMENT,
  `character_id` int unsigned DEFAULT NULL,
  `faction_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`character_faction_id`),
  KEY `character_id` (`character_id`),
  KEY `faction_id` (`faction_id`),
  CONSTRAINT `character_faction_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`character_id`),
  CONSTRAINT `character_faction_ibfk_2` FOREIGN KEY (`faction_id`) REFERENCES `faction` (`faction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_faction`
--

LOCK TABLES `character_faction` WRITE;
/*!40000 ALTER TABLE `character_faction` DISABLE KEYS */;
INSERT INTO `character_faction` VALUES (1,1,10),(2,2,2),(3,3,9),(4,4,4),(5,5,8),(6,6,3),(7,7,5),(8,8,1),(9,9,7),(10,10,6);
/*!40000 ALTER TABLE `character_faction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_quest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest` (
  `character_quest_id` int unsigned NOT NULL AUTO_INCREMENT,
  `character_id` int unsigned DEFAULT NULL,
  `quest_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`character_quest_id`),
  KEY `character_id` (`character_id`),
  KEY `char_quest` (`quest_id`),
  CONSTRAINT `character_quest_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`character_id`),
  CONSTRAINT `character_quest_ibfk_2` FOREIGN KEY (`quest_id`) REFERENCES `quest` (`quest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_quest`
--

LOCK TABLES `character_quest` WRITE;
/*!40000 ALTER TABLE `character_quest` DISABLE KEYS */;
INSERT INTO `character_quest` VALUES (1,1,10),(2,2,5),(3,3,3),(4,2,4),(5,1,7),(6,3,2),(7,3,1),(8,1,6),(9,1,8),(10,2,9);
/*!40000 ALTER TABLE `character_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_relationship`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_relationship` (
  `character_relationship_id` int unsigned NOT NULL AUTO_INCREMENT,
  `character_id_1` int unsigned DEFAULT NULL,
  `character_id_2` int unsigned DEFAULT NULL,
  `relationship_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`character_relationship_id`),
  KEY `character_id_1` (`character_id_1`),
  KEY `character_id_2` (`character_id_2`),
  KEY `relationship_id` (`relationship_id`),
  CONSTRAINT `character_relationship_ibfk_1` FOREIGN KEY (`character_id_1`) REFERENCES `characters` (`character_id`),
  CONSTRAINT `character_relationship_ibfk_2` FOREIGN KEY (`character_id_2`) REFERENCES `characters` (`character_id`),
  CONSTRAINT `character_relationship_ibfk_3` FOREIGN KEY (`relationship_id`) REFERENCES `relationship` (`relationship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_relationship`
--

LOCK TABLES `character_relationship` WRITE;
/*!40000 ALTER TABLE `character_relationship` DISABLE KEYS */;
INSERT INTO `character_relationship` VALUES (1,1,2,1),(2,1,3,7),(3,10,3,2),(4,2,3,3),(5,10,9,4),(6,8,7,8),(7,3,5,6),(8,1,10,5),(9,3,10,2),(10,2,6,6);
/*!40000 ALTER TABLE `character_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_type` (
  `character_type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `character_type_name` varchar(50) NOT NULL,
  `character_type_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`character_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_type`
--

LOCK TABLES `character_type` WRITE;
/*!40000 ALTER TABLE `character_type` DISABLE KEYS */;
INSERT INTO `character_type` VALUES (1,'Player','Player characters are controlled by a player of the game, who makes decisions and choices for them. '),(2,'NonPlayer','Non-player characters are controlled by the game master and their personalities are set.');
/*!40000 ALTER TABLE `character_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `character_id` int unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int unsigned DEFAULT NULL,
  `character_surname` varchar(50) NOT NULL,
  `character_forename` varchar(50) NOT NULL,
  `character_alias` varchar(50) DEFAULT NULL,
  `character_type_id` int unsigned DEFAULT NULL,
  `inventory_id` int unsigned DEFAULT NULL,
  `class_id` int unsigned DEFAULT NULL,
  `region_id` int unsigned DEFAULT NULL,
  `species_id` int unsigned DEFAULT NULL,
  `level_id` int unsigned DEFAULT NULL,
  `alignment_id` int unsigned DEFAULT NULL,
  `character_backstory` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`character_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `class_id` (`class_id`),
  KEY `species_id` (`species_id`),
  KEY `level_id` (`level_id`),
  KEY `alignment_id` (`alignment_id`),
  KEY `region_id` (`region_id`),
  KEY `character_type_id` (`character_type_id`),
  KEY `character_name` (`character_surname`,`character_forename`),
  KEY `character_player` (`player_id`),
  CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `characters_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  CONSTRAINT `characters_ibfk_4` FOREIGN KEY (`species_id`) REFERENCES `species` (`species_id`),
  CONSTRAINT `characters_ibfk_5` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`),
  CONSTRAINT `characters_ibfk_6` FOREIGN KEY (`alignment_id`) REFERENCES `alignment` (`alignment_id`),
  CONSTRAINT `characters_ibfk_7` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`),
  CONSTRAINT `characters_ibfk_8` FOREIGN KEY (`character_type_id`) REFERENCES `character_type` (`character_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,1,'Ironheart','Eldric','The Brave',1,1,1,2,1,7,3,'Eldric Ironheart, a barbarian from Balewood City, grew up in poverty amidst corruption. Eldric\'s parents instilled compassion and a drive to rebel against tyranny. Embracing a chaotic sense of justice, Eldric trained in the wilderness, leading raids to liberate the oppressed humans. Despite sacrifices and scars, Eldric remains unwavering, fighting for freedom and justice. With axe and fiery heart, roaming the wilds, a symbol of hope and a fierce guardian against tyranny.'),(2,2,'Brightwood','Thalwyn','The Wise',1,2,10,7,6,5,8,'Thalwyn Brightwood, known as \"The Wise,\" is a tiefling sorcerer hailing from the Miasmic Ruins. Growing up amidst decay and darkness, Thalwyn learned to harness innate magical abilities for personal gain. Cunning and manipulative, Thalwyn operates under the guise of wisdom, using charm and intellect to deceive those close. Driven by a desire for power and control, Thalwyn schemes in the shadows, orchestrating events to further Thalwyn\'s own ambitions. Neutrality allows adaptability to any situation, exploiting opportunities for benefit without concern for moral considerations.'),(3,3,'Shadowdancer','Lyra','The Temptress',1,3,8,9,1,3,4,'Lyra Shadowdancer, a human ranger from Shadowfen Swamp, embodies the balanced ethos of lawful neutrality. Trained in survival and combat, Lyra adheres to a strict code of conduct, navigating the swamp\'s dangers with unwavering dedication. Neither swayed by chaos nor bound by strict order, Lyra defends the swamp\'s inhabitants and its delicate ecosystem. With compassion and vigilance, Lyra stands as a silent guardian, upholding the laws of nature and preserving the balance of Shadowfen.'),(4,NULL,'Silversong','Aranwe','The Graceful',2,4,4,10,2,2,2,'In the tranquil embrace of Sunset Peak, Aranwe Silversong, an elf of exceptional grace and boundless empathy, found their calling amidst the whispers of the natural world. Raised beneath the verdant canopy of ancient forests, Aranwe\'s affinity for the spirits of the land blossomed from a young age, guiding them along the path of the druid. Under the tutelage of wise elders, Aranwe honed their connection to nature\'s primal forces, becoming a steward of the delicate balance between civilization and the wilds. Known as \"the Graceful,\" Aranwe devoted themselves to tending to the needs of both the land and its inhabitants, offering solace to the wounded and protection to the defenseless.'),(5,NULL,'Stonehammer','Durin','',2,5,6,7,3,10,6,'In the depths of the Miasmic Ruins, Durin Stonehammer, a dwarven monk, walks a path of chaotic neutrality. Raised amidst mystery, Durin embraces chaos, seeking secrets within the ruins. Despite unpredictability, they champion justice for the oppressed, wielding martial prowess in their quest for change. In their wake, they leave a legacy of transformation, a testament to chaos\'s power in a stagnant world.'),(6,NULL,'Greenbottle','Tilly','',2,6,3,5,4,1,1,'In the quaint village of Evermist Lake resides Tilly Greenbottle, a halfling cleric devoted to the principles of law and goodness. From a young age, Tilly felt a calling to serve others, drawn to the teachings of compassion and righteousness. Raised in the heart of the village, Tilly learned the ways of healing and devotion from their family, who were revered as caretakers of the community. Guided by a strong sense of duty and morality, Tilly\'s faith in the divine grew, shaping their path towards becoming a cleric. As they matured, Tilly\'s commitment to upholding justice and aiding those in need became unwavering. They dedicated themselves to serving as a beacon of hope and guidance in Evermist Lake, offering solace to the weary and aid to the afflicted.'),(7,NULL,'Gearspark','Rurik','',2,7,7,6,7,8,5,'In the frosty reaches of Frostpeak Glacier, amidst the icy winds and towering peaks, resides Rurik Gearspark, a gnome paladin of enigmatic origin and true neutral disposition. Born into the rugged landscape of the glacier, Rurik\'s early years were marked by solitude and introspection. Raised by a tribe of nomadic gnomes who traversed the icy expanse in search of sustenance and shelter, Rurik learned the ways of survival and self-reliance from a young age. Yet, unlike their kin who adhered to strict codes of morality, Rurik walked a path of neutrality, navigating the complexities of the world with a sense of detachment and equilibrium.'),(8,NULL,'','Grakka','The Unyielding',2,8,5,3,9,3,7,'In the murky depths of Crooked Marsh, amidst the tangled vines and fetid waters, dwells Grakka, an orc fighter of formidable strength and ruthless ambition. From their earliest days, Grakka was shaped by the unforgiving landscape of the marsh, where survival often meant embracing the darkest aspects of one\'s nature. Raised among a tribe of orc warriors who ruled the marsh with an iron fist, Grakka learned the ways of combat and conquest from a young age. Their prowess in battle was unmatched, their ferocity on the battlefield earning them the respect and fear of their kin. They became known as \"the Unyielding,\" a title whispered with a mixture of awe and dread throughout the marshlands.'),(9,NULL,'Windrunner','Elara','',2,9,9,4,8,4,9,'In the depths of Duskwood Forest, shrouded in darkness and mystery, lurks Elara Windrunner, a half-elf rogue of formidable skill and chaotic evil disposition. Born of a union between an elven wanderer and a human thief, Elara\'s early years were marked by deception and treachery. Raised in the shadows of Duskwood, Elara learned the ways of stealth and subterfuge from a young age, their natural talents honed by years of survival in the unforgiving wilderness. With each passing day, their lust for power and excitement grew, driving them to embrace the darker aspects of their nature. Fueled by a desire for chaos and destruction, Elara roamed the forest with reckless abandon, leaving a trail of theft and deceit in their wake. They cared little for the well-being of others, viewing them as mere pawns to be manipulated and discarded at will.'),(10,NULL,'Flameheart','Draxus','The Oathbreaker',2,10,2,1,5,9,6,'In the tranquil village of Amberdale, nestled amidst rolling hills and golden fields, resides Draxus Flameheart, a dragonborn bard of unparalleled talent and chaotic neutral disposition. Born beneath the watchful gaze of the Amberdale elders, Draxus\'s early years were filled with tales of heroism and adventure, fueling their imagination and stirring their wanderlust. Inspired by the legends of old, they set out on a journey of self-discovery, eager to explore the world beyond the confines of their village. As they traveled from town to town, Draxus\'s chaotic nature revealed itself, their path meandering and unpredictable. They embraced the freedom of the open road, reveling in the thrill of new experiences and the excitement of the unknown. Yet, beneath their carefree exterior lay a heart filled with empathy and compassion. Draxus used their talents not only to entertain, but also to uplift and inspire those they encountered on their travels. ');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` int unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `class_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Barbarian','Masters of primal rage and raw power, barbarians channel their fury into devastating attacks, shrugging off wounds as they unleash chaos on the battlefield.'),(2,'Bard','Charismatic performers and wielders of magic, bards use their music and charm to inspire allies, manipulate emotions, and cast powerful spells.'),(3,'Cleric','Devoted servants of divine power, clerics channel the energy of their deity to heal the wounded, banish the undead, and smite the foes of their faith.'),(4,'Druid','Guardians of the natural world, druids harness the forces of nature to shape-shift, cast spells, and protect the balance of ecosystems.'),(5,'Fighter','Masters of martial combat, fighters excel in a variety of weapons and tactics, from sword and shield to archery and dual-wielding, making them formidable foes on the battlefield.'),(6,'Monk','Disciplined warriors of mind and body, monks harness their inner chi to perform incredible feats of agility and strength, striking with precision and speed.'),(7,'Paladin','Champions of righteousness and virtue, paladins swear oaths to uphold justice and defend the innocent, wielding divine magic and martial prowess in service to their cause.'),(8,'Ranger','Skilled trackers and wilderness experts, rangers roam the wilds with unmatched proficiency in hunting, survival, and archery, forming bonds with animals and harnessing natural magic.'),(9,'Rogue','Masters of stealth and deception, rogues excel in the art of subterfuge, using cunning tactics, lock-picking skills, and deadly precision to outmaneuver their foes.'),(10,'Sorcerer','Born with innate magical talent, sorcerers command powerful arcane forces, casting spells with raw charisma and tapping into their bloodline to unleash elemental powers and otherworldly abilities.');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficulty`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `difficulty` (
  `difficulty_id` int unsigned NOT NULL AUTO_INCREMENT,
  `difficulty_name` varchar(50) NOT NULL,
  `difficulty_description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`difficulty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficulty`
--

LOCK TABLES `difficulty` WRITE;
/*!40000 ALTER TABLE `difficulty` DISABLE KEYS */;
INSERT INTO `difficulty` VALUES (1,'VeryEasy','This level is perfect for beginners or those looking for a relaxed experience. Challenges are minimal, and success is almost guaranteed with little effort or skill required.'),(2,'Easy','Slightly more challenging than Very Easy, this level still offers a relatively gentle experience. Players may encounter minor obstacles, but they can progress comfortably with minimal frustration.'),(3,'Medium','The standard difficulty level suitable for most players. Expect a balanced experience with a fair amount of challenge. Players will need to apply some strategy and skill to overcome obstacles and enemies.'),(4,'Hard','Recommended for experienced players seeking a greater challenge. Expect tougher enemies, more complex puzzles, and a higher level of difficulty overall. Success may require careful planning and precise execution.'),(5,'VeryHard','Reserved for seasoned veterans looking for the ultimate test of skill. This level offers extreme challenges, punishing encounters, and unforgiving gameplay mechanics. Success is hard-won and requires mastery of game mechanics and tactics.');
/*!40000 ALTER TABLE `difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faction`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faction` (
  `faction_id` int unsigned NOT NULL AUTO_INCREMENT,
  `faction_name` varchar(50) NOT NULL,
  `faction_description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`faction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faction`
--

LOCK TABLES `faction` WRITE;
/*!40000 ALTER TABLE `faction` DISABLE KEYS */;
INSERT INTO `faction` VALUES (1,'BlackHandSyndicate','A secretive criminal organization specializing in smuggling, assassination, and illicit trade, exerting influence through fear and manipulation.'),(2,'CouncilOfMages','A prestigious society of arcane spellcasters dedicated to the study and preservation of magic, wielding great power and knowledge in the pursuit of mystical mastery.'),(3,'Dawnbringers','A noble order of knights and warriors sworn to protect the innocent and uphold justice, standing as beacons of hope in times of darkness.'),(4,'EmeraldEnclave','Guardians of the natural world, druids, rangers, and allies work to preserve the balance of nature, defending wilderness areas and opposing threats to the environment.'),(5,'HarbingersOfChaos','Agents of discord and upheaval, followers of chaos and destruction who seek to sow disorder and bring down established order through violence and anarchy.'),(6,'IronforceLegion','A formidable military organization renowned for its discipline and strength, serving as the bulwark against external threats and enforcing the will of rulers.'),(7,'OrderOfTheBlade','Elite warriors and mercenaries bound by honor and duty, wielding their martial prowess to uphold justice and protect the weak.'),(8,'ScarletBrotherhood','A shadowy network of spies, assassins, and conspirators, working behind the scenes to manipulate events and further their own agenda of power and control.'),(9,'ThievesGuild','Masters of stealth and deception, thieves, rogues, and burglars operate in the underworld, stealing treasures and secrets for profit and influence.'),(10,'WardensOfTheAstralKeep','Protectors of arcane knowledge and artifacts, scholars, wizards, and guardians safeguard ancient lore and magical relics from misuse and destruction.');
/*!40000 ALTER TABLE `faction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int unsigned NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(50) DEFAULT NULL,
  `inventory_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'EldricIronheartInventory','Inventory of Eldric Ironheart.'),(2,'ThalwynBrightwoodInventory','Inventory of Thalwyn Brightwood.'),(3,'LyraShadowdancerInventory','Inventory of Lyra Shadowdancer.'),(4,'AranweSilversongInventory','Inventory of Aranwe Silversong.'),(5,'DurinStonehammerInventory','Inventory of Durin Stonehammer.'),(6,'TillyGreenbottleInventory','Inventory of Tilly Greenbottle.'),(7,'RurikGearsparkInventory','Inventory of Rurik Gearspark.'),(8,'GrakkaInventory','Inventory of Grakka.'),(9,'ElaraWindrunnerInventory','Inventory of Elara Windrunner.'),(10,'DraxusFlameheartInventory','Inventory of Draxus Flameheart.');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_item` (
  `inventory_item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `inventory_id` int unsigned DEFAULT NULL,
  `item_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`inventory_item_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `inventory_item_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `inventory_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_item`
--

LOCK TABLES `inventory_item` WRITE;
/*!40000 ALTER TABLE `inventory_item` DISABLE KEYS */;
INSERT INTO `inventory_item` VALUES (1,1,3),(2,2,1),(3,3,5),(4,4,2),(5,5,6),(6,6,10),(7,7,4),(8,8,8),(9,9,9),(10,10,7);
/*!40000 ALTER TABLE `inventory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL,
  `item_type_id` int unsigned DEFAULT NULL,
  `rarity_id` int unsigned DEFAULT NULL,
  `item_description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `rarity_id` (`rarity_id`),
  KEY `item_type_rarity` (`item_type_id`,`rarity_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`item_type_id`),
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`rarity_id`) REFERENCES `rarity` (`rarity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'AmuletOfProtection',1,3,'A magical pendant imbued with defensive enchantments, granting its wearer enhanced resistance against physical and magical attacks.'),(2,'BracersOfArchery',10,5,'Wrist guards enchanted to improve the accuracy and range of ranged attacks, empowering the wearer\'s bow or crossbow skills.'),(3,'DragonbaneBlade',9,7,'A mythical sword forged with materials capable of slaying dragons, dealing additional damage against draconic foes.'),(4,'ElixirOfInvisibility',4,2,'A potent potion that renders the drinker invisible for a limited duration, allowing for stealthy movement and evasion of enemies.'),(5,'GlovesOfThievery',10,4,'Magical gloves that enhance the wearer\'s dexterity and sleight of hand, granting proficiency in pickpocketing and lockpicking.'),(6,'MedallionOfDivineFavor',1,6,'A holy symbol imbued with the blessings of a deity, granting its wearer divine protection and bolstering their abilities in combat.'),(7,'RingOfElementalControl',5,5,'A ring attuned to the elemental forces of nature, allowing the wearer to manipulate and command fire, water, air, or earth to their will.'),(8,'ScrollOfSpellcasting',6,1,'A magical scroll inscribed with a single-use spell, allowing non-spellcasters to cast spells beyond their normal capabilities.'),(9,'StaffOfTheArchmagi',7,4,'A powerful magical staff wielded by master spellcasters, capable of channeling immense arcane energy and casting potent spells.'),(10,'TomeOfAncientKnowledge',10,6,'A rare and valuable tome containing ancient wisdom and secrets, granting its reader profound insights into magic, history, and the mysteries of the universe.');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_type` (
  `item_type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_type_name` varchar(50) NOT NULL,
  `item_type_description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`item_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_type`
--

LOCK TABLES `item_type` WRITE;
/*!40000 ALTER TABLE `item_type` DISABLE KEYS */;
INSERT INTO `item_type` VALUES (1,'Amulet','A magical pendant worn around the neck, imbued with protective or enhancing enchantments to aid the wearer.'),(2,'Artifact','An ancient and powerful item of great significance, often possessing unique abilities or legendary origins.'),(3,'Armour','Protective gear worn on the body, such as suits of plate mail, chainmail, or leather, providing defense against physical attacks.'),(4,'Potion','A magical concoction contained in a vial, providing temporary or permanent enhancements to the drinker\'s abilities or attributes.'),(5,'Ring','A magical band worn on the finger, imbued with mystical properties such as enhancing abilities, providing protection, or granting special abilities.'),(6,'Scroll','A magical parchment inscribed with spells or incantations, allowing non-spellcasters to cast spells by reading from the scroll.'),(7,'Staff','A long, slender rod imbued with magical energies, often wielded by spellcasters to channel their magical abilities or cast spells.'),(8,'Tool','A non-magical item used for a specific purpose or trade, such as lockpicks, thieves\' tools, or artisan\'s tools.'),(9,'Weapon','A tool used for combat, such as swords, axes, bows, or staves, often imbued with magical properties or enhancements.'),(10,'WondrousItem','A magical object of extraordinary power or utility, possessing unique abilities or properties that defy conventional explanation.');
/*!40000 ALTER TABLE `item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `level_id` int unsigned NOT NULL AUTO_INCREMENT,
  `level_name` varchar(50) NOT NULL,
  `level_description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'Level1','The lowest possible level.'),(2,'Level2','Slightly more experienced, gaining proficiency and a few new abilities.'),(3,'Level3','Competent adventurers, honing their skills and unlocking more powerful abilities.'),(4,'Level4','Seasoned adventurers, mastering their chosen path and gaining significant improvements in their abilities.'),(5,'Level5','Experienced adventurers, reaching a milestone where they gain access to more potent spells and abilities.'),(6,'Level6','Accomplished adventurers, becoming formidable forces in their chosen fields, with access to even greater powers.'),(7,'Level7','Seasoned veterans, mastering their craft and demonstrating exceptional skill and expertise.'),(8,'Level8','Expert adventurers, pushing the boundaries of their abilities and achieving remarkable feats.'),(9,'Level9','Elite champions, standing among the greatest heroes, with access to unparalleled powers and abilities.'),(10,'Level10','Legendary heroes, reaching the pinnacle of their strength and prowess, capable of facing the most formidable challenges and shaping the fate of worlds.');
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` int unsigned NOT NULL AUTO_INCREMENT,
  `player_forename` varchar(50) NOT NULL,
  `player_surname` varchar(50) NOT NULL,
  `player_dob` date NOT NULL,
  `player_email` varchar(50) NOT NULL,
  `player_username` varchar(25) NOT NULL,
  `player_password` varchar(25) NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_username` (`player_username`),
  KEY `player_name` (`player_surname`,`player_forename`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Dan','Smoles','1987-10-23','dan_smoles@outlook.com','dansmolesrulz','!23456789!0'),(2,'Kelvin','Bowe','1995-12-12','kb1995@yahoo.com','cowbow95','kbbwW!cked'),(3,'Megan','Pratchett','2000-01-20','mpbrattygirl@gmail.com','unicornluv4ever','YAAAASSSSSS');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest` (
  `quest_id` int unsigned NOT NULL AUTO_INCREMENT,
  `quest_name` varchar(100) NOT NULL,
  `region_id` int unsigned DEFAULT NULL,
  `difficulty_id` int unsigned DEFAULT NULL,
  `quest_description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`quest_id`),
  KEY `difficulty_id` (`difficulty_id`),
  KEY `quest_region_difficulty` (`region_id`,`difficulty_id`),
  CONSTRAINT `quest_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`),
  CONSTRAINT `quest_ibfk_2` FOREIGN KEY (`difficulty_id`) REFERENCES `difficulty` (`difficulty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
INSERT INTO `quest` VALUES (1,'AncientArtifact',1,1,'Rumors speak of a powerful artifact hidden within the depths of ancient ruins, said to hold the key to unlocking untold power. Brave the perilous journey through crumbling corridors and trap-laden chambers, facing ancient guardians and rival adventurers vying for the artifact\'s secrets. But beware, for the relic\'s true power may be more than mere mortals can control.'),(2,'BountyHunt',2,1,'Answer the call of a lucrative bounty contract, tasked with tracking down and apprehending or eliminating a notorious criminal or fearsome creature terrorizing the land. Navigate through dense forests, treacherous swamps, or shadowy alleyways as you pursue your quarry, facing danger and intrigue at every turn. Will you emerge victorious and claim your reward, or will the tables be turned as the hunter becomes the hunted?'),(3,'CursedCurse',3,2,'A dark curse has befallen a once-thriving village, twisting its inhabitants into monstrous forms and spreading misery and despair. Delve into the village\'s troubled past and uncover the origins of the curse, facing haunted ruins, malevolent spirits, and sinister cultists in your quest to break the curse\'s hold. But be warned, for some curses are more insidious than they seem, and breaking them may come at a great cost.'),(4,'DragonsHoard',4,2,'Legends tell of a fearsome dragon whose lair is filled with untold riches and magical treasures beyond imagination. Steel your nerves and gather a band of brave adventurers as you journey to the heart of the dragon\'s lair, facing deadly traps, cunning guardians, and the ever-watchful gaze of the dragon itself. But beware, for the dragon\'s hoard is fiercely guarded, and only the most cunning and courageous will claim its treasures.'),(5,'EternalElixir',5,3,'Seek out the fabled Eternal Elixir, a legendary potion said to grant eternal life or boundless power to those who possess it. Traverse treacherous landscapes, navigate ancient ruins, and outwit cunning adversaries as you search for clues to the elixir\'s whereabouts. But be wary, for many have sought the elixir before you, and not all who seek its power have noble intentions.'),(6,'FeywildFolly',6,3,'Enter the enchanted realm of the Feywild on a quest to retrieve a lost artifact or rescue a captive held captive by mischievous fey creatures. Navigate through whimsical landscapes filled with colorful flora and fauna, and outwit cunning fey creatures with trickery and diplomacy. But beware, for the Feywild is a realm of unpredictable magic and ever-changing landscapes, where nothing is as it seems.'),(7,'GuardiansGauntlet',7,4,'Test your mettle in a series of trials and challenges set by powerful guardians, each more formidable than the last. Navigate through ancient temples, treacherous dungeons, and mystical labyrinths as you prove your worth and earn the favor of the guardians. Unlock legendary treasures and ancient artifacts, but beware, for failure may come at a great cost.'),(8,'LostLore',8,4,' Delve into the depths of ancient tomes and forgotten ruins in search of lost knowledge and hidden secrets. Piece together fragments of lore and decipher cryptic clues to uncover long-buried truths and unlock untold power. But beware, for some secrets are best left undisturbed, and delving too deep may awaken ancient evils best left forgotten.'),(9,'MysticalMystery',9,5,'Solve a perplexing mystery shrouded in magic and intrigue, uncovering clues and unraveling hidden truths as you race against time to thwart sinister plots or unlock ancient prophecies. Navigate through shadowy alleyways, haunted mansions, and mystical realms as you confront malevolent sorcerers, ancient curses, and otherworldly horrors. But be warned, for the line between truth and illusion may blur, and not all mysteries have a happy ending.'),(10,'OrcishOnslaught',10,5,'Rally your allies and fortify your defenses against a relentless onslaught of orc raiders threatening to overrun a settlement or kingdom. Lead your forces into battle against the orc horde, facing waves of ferocious warriors, towering beasts, and powerful warlords. Strategize and coordinate your defenses, and unleash devastating counterattacks to turn the tide of battle and secure victory against the orcish onslaught.');
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `quest_summary_view`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quest_summary_view` AS SELECT 
 1 AS `quest_name`,
 1 AS `region_name`,
 1 AS `difficulty_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rarity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rarity` (
  `rarity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `rarity_name` varchar(50) NOT NULL,
  `rarity_description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`rarity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rarity`
--

LOCK TABLES `rarity` WRITE;
/*!40000 ALTER TABLE `rarity` DISABLE KEYS */;
INSERT INTO `rarity` VALUES (1,'Common','Items that are widely available and easily accessible, with basic abilities or attributes.'),(2,'Uncommon','Items that are somewhat rare but still attainable through regular means, possessing slightly more powerful or unique traits.'),(3,'Rare','Items that are difficult to find and highly sought after, often possessing powerful abilities or extraordinary qualities.'),(4,'VeryRare','Items that are exceedingly rare and legendary, coveted by adventurers and collectors alike for their incredible power or significance.'),(5,'Epic','Items of epic status, possessing unparalleled abilities or qualities.'),(6,'Legendary','Items of immense power and significance, revered as the pinnacle of their kind and sought after by heroes and rulers alike.'),(7,'Mythic','Items of mythic proportions, with powers and abilities that transcend mortal understanding, shaping the course of history and legend for generations to come.');
/*!40000 ALTER TABLE `rarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(50) NOT NULL,
  `region_description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'AmberdaleVillage','A picturesque settlement nestled among rolling hills and golden fields, Amberdale is known for its idyllic beauty and close-knit community. Farmers tend to lush crops while craftsmen ply their trades in quaint workshops, creating a peaceful haven amidst the surrounding wilderness.'),(2,'BalewoodCity','A bustling metropolis built amidst towering trees and verdant forests, Balewood City is a hub of commerce and culture. Its streets bustle with merchants peddling exotic wares, while scholars pore over ancient tomes in grand libraries, making it a vibrant center of activity and innovation.'),(3,'CrookedMarsh','A sprawling expanse of tangled wetlands and murky waters, Crooked Marsh is a haven for smugglers, outlaws, and creatures of the night. Its twisting waterways and treacherous bogs conceal hidden dangers and ancient secrets, making it a place of mystery and peril.'),(4,'DuskwoodForest','A dark and foreboding woodland cloaked in shadow, Duskwood Forest is home to eerie whispers and lurking horrors. Haunted ruins and forgotten graveyards dot its landscape, shrouded in tales of curses and lost souls, creating an atmosphere of dread and unease.'),(5,'EvermistLake','A tranquil oasis of crystal-clear waters and lush foliage, Evermist Lake is a sanctuary for wildlife and wanderers alike. Its peaceful shores offer respite from the chaos of the outside world, while its mystical mists conceal ancient mysteries waiting to be discovered.'),(6,'FrostpeakGlacier','A frigid wasteland of ice and snow, Frostpeak Glacier is home to towering mountains and treacherous crevasses. Brutal blizzards and savage beasts make it a harsh and unforgiving landscape, yet its frozen depths hold secrets of great power and ancient civilizations.'),(7,'MiasmicRuins','A desolate landscape of crumbling ruins and toxic mists, the Miasmic Ruins are a testament to a bygone era of glory and decay. Haunted by restless spirits and twisted abominations, its cursed halls are a realm of darkness and despair.'),(8,'MoonlightCove','A serene coastal town bathed in the soft glow of moonlight, Moonlight Cove is known for its breathtaking vistas and peaceful atmosphere. Fishermen ply its tranquil waters while artists capture its beauty on canvas, making it a haven for dreamers and romantics.'),(9,'ShadowfenSwamp','A murky labyrinth of tangled vines and murky waters, Shadowfen Swamp is a place of ancient magic and forgotten horrors. Its shifting marshlands conceal hidden dangers and lost treasures, shrouded in mist and mystery.'),(10,'SunsetPeak','A majestic mountain range bathed in the warm hues of twilight, Sunset Peak is a land of rugged beauty and untamed wilderness. Its towering peaks and sweeping valleys are home to hardy adventurers and reclusive hermits, drawn by its natural splendor and untapped potential.');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationship` (
  `relationship_id` int unsigned NOT NULL AUTO_INCREMENT,
  `relationship_name` varchar(50) NOT NULL,
  `relationship_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`relationship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
INSERT INTO `relationship` VALUES (1,'Alliance','A bond formed between individuals or groups with shared goals or interests, working together towards a common purpose or mutual benefit.'),(2,'Enmity','A state of hostility or animosity between individuals or groups, characterized by conflict and opposition.'),(3,'Family','A bond forged by blood or close kinship, marked by love, loyalty, and support through thick and thin.'),(4,'Mentorship','A relationship in which one individual imparts wisdom, guidance, and knowledge to another, nurturing their growth and development.'),(5,'Partnership','A cooperative relationship between individuals or entities, pooling resources and efforts to achieve shared objectives or mutual success. Less formal than an alliance.'),(6,'Rivalry','A competitive relationship between individuals or groups, driven by a desire to outperform or surpass one another in skill, achievement, or status.'),(7,'Romance','A deep emotional and often physical bond between individuals, characterized by love, passion, and intimacy.'),(8,'Truce','A temporary cessation of hostilities or conflict between opposing parties, often negotiated to allow for peaceful resolution or mutual benefit.');
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `species_id` int unsigned NOT NULL AUTO_INCREMENT,
  `species_name` varchar(50) NOT NULL,
  `species_description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`species_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'Human','Humans are a diverse and adaptable species known for their ambition, resilience, and capacity for innovation. With lifespans typically spanning several decades, humans exhibit a wide range of physical features, cultural traditions, and societal structures. From bustling cities to remote villages, humans thrive in various environments, driven by their insatiable curiosity and endless capacity for growth and change.'),(2,'Elf','Graceful and long-lived, elves are beings of ethereal beauty and ancient wisdom. Their slender frames and pointed ears mark them as beings of the Feywild, where they share a deep connection to nature and magic. Elves are often attuned to the rhythms of the natural world, dwelling in harmonious communities within ancient forests or secluded enclaves hidden from mortal eyes. Gifted with keen senses and an innate understanding of arcane energies, elves excel as artisans, scholars, and guardians of ancient knowledge.'),(3,'Dwarf','Stout and hardy, dwarves are renowned for their craftsmanship, endurance, and unwavering determination. Originating from the mountainous regions deep within the earth, dwarves have developed a rich culture centered around mining, metalwork, and stonemasonry. With sturdy frames and thick beards, they are well-suited to withstand the rigors of their subterranean homes and excel in forging weapons, armor, and intricate works of art. Despite their gruff exterior, dwarves possess a strong sense of loyalty and honor, valuing kinship and tradition above all else.'),(4,'Halfling','Small in stature but full of spirit, halflings are a jovial and adventurous folk known for their love of good food, simple pleasures, and close-knit communities. With rosy cheeks and cheerful dispositions, halflings embrace life with gusto, finding joy in laughter, song, and camaraderie. Often dwelling in idyllic villages nestled amidst rolling hills or fertile farmlands, halflings lead lives of contentment and curiosity, ever eager to explore the world beyond their doorstep and share tales of their adventures around the hearth.'),(5,'Dragonborn','Proud and noble, dragonborn are descendants of mighty dragons, bearing physical traits such as scales, claws, and breath weapons that reflect their draconic heritage. With powerful bodies and fiery spirits, dragonborn are often revered as warriors, leaders, and champions of honor and justice. Many dragonborn societies are organized around clans or tribes, each venerating a different aspect of draconic power and wisdom. Whether as guardians of ancient dragon hoards or valiant defenders of their homeland, dragonborn are renowned for their courage, loyalty, and unwavering resolve.'),(6,'Tiefling','Possessing a lineage tied to the infernal realms, tieflings bear physical traits such as horns, tails, and fiendish visages that set them apart from other mortal races. Though often subjected to prejudice and mistrust due to their appearance, tieflings possess inner strength and resilience forged by their infernal ancestry. Many tieflings channel their innate magical abilities to pursue careers as sorcerers, warlocks, or rogues, wielding their infernal powers with cunning and determination. Despite their troubled past, tieflings are capable of great compassion and empathy, seeking to prove their worth through deeds of bravery and selflessness.'),(7,'Gnome','Curious and inventive, gnomes are a whimsical and creative race known for their technological prowess, love of tinkering, and boundless curiosity. With nimble fingers and keen minds, gnomes excel as inventors, engineers, and artisans, crafting fantastical contraptions and intricate works of art that defy explanation. Many gnomes live in bustling cities or hidden workshops filled with whirring gears, bubbling potions, and arcane experiments, where they pursue their passions and share their discoveries with like-minded tinkerers.'),(8,'Half-Elf','Bridging the worlds of humans and elves, half-elves possess a unique blend of grace, adaptability, and charisma. With the physical beauty of their elven heritage and the versatility of their human ancestry, half-elves often find themselves drawn to a wide range of pursuits, from diplomacy and exploration to magic and martial arts. Gifted with keen intuition and a talent for diplomacy, many half-elves serve as mediators, ambassadors, or adventurers, forging bonds of friendship and understanding between their two ancestral kin.'),(9,'Orc','Strong and formidable, orcs are a proud and fiercely independent race known for their martial prowess, fierce loyalty, and deep connection to the natural world. With muscular frames and savage instincts, orcs excel as warriors, hunters, and shamans, drawing strength from their tribal traditions and ancestral spirits. Many orcs live in close-knit communities governed by codes of honor and respect, where bonds of kinship and brotherhood are forged through shared trials and triumphs. Despite their fearsome reputation, orcs are capable of great compassion and camaraderie, standing united against common foes and defending their homelands with unyielding resolve.'),(10,'Lizardfolk','Primal and enigmatic, lizardfolk are reptilian creatures known for their stoic demeanor, tribal societies, and deep connection to the natural world. With scaly hides and keen senses, lizardfolk are well-suited to their swampy or jungle habitats, where they live in harmony with the rhythms of nature. Many lizardfolk tribes are governed by shamanic traditions and communal rituals, where elders and spiritual leaders guide their people with wisdom and foresight. Despite their reserved nature, lizardfolk are fiercely protective of their territories and kin, defending their homes with tooth and claw against any who would threaten their way of life.');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'caves_and_creatures'
--

--
-- Final view structure for view `quest_summary_view`
--

/*!50001 DROP VIEW IF EXISTS `quest_summary_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quest_summary_view` AS select `quest`.`quest_name` AS `quest_name`,`region`.`region_name` AS `region_name`,`difficulty`.`difficulty_name` AS `difficulty_name` from ((`quest` join `region` on((`quest`.`region_id` = `region`.`region_id`))) join `difficulty` on((`quest`.`difficulty_id` = `difficulty`.`difficulty_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-03 22:54:13
