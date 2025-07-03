-- Test Data used to populate the tables and test integrity

-- player
INSERT INTO `player` (`player_id`, `player_surname`, `player_forename`, `player_dob`, `player_email`, `player_username`, `player_password`) VALUES
(1, 'Smoles', 'Dan', '1987-10-23', 'dan_smoles@outlook.com', 'dansmolesrulz', '!23456789!0'),
(2, 'Bowe', 'Kelvin', '1995-12-12', 'kb1995@yahoo.com', 'cowbow95', 'kbbwW!cked'),
(3, 'Pratchett', 'Megan', '2000-01-20', 'mpbrattygirl@gmail.com', 'unicornluv4ever', 'YAAAASSSSSS');

-- character_type
INSERT INTO `character_type` (`character_type_id`, `character_type_name`, `character_type_description`) VALUES
(1, 'Player', 'Player characters are controlled by a player of the game, who makes decisions and choices for them. '),
(2, 'NonPlayer', 'Non-player characters are controlled by the game master and their personalities are set.');

-- alignment
INSERT INTO `alignment` (`alignment_id`, `alignment_name`, `alignment_description`) VALUES
(1, 'LawfulGood', 'Characters who uphold law and order while promoting the greater good. They believe in doing what is right, following rules, and helping others within the framework of established laws and codes of conduct.'),
(2, 'NeutralGood', 'Characters who prioritize doing good deeds and helping others, but without being bound by strict adherence to laws or personal codes. They act altruistically and strive to make positive impacts on the world.'),
(3, 'ChaoticGood', 'Characters who value personal freedom and individualism, often rebelling against authority or societal norms to do what they believe is right. They may employ unconventional or unpredictable methods to achieve their goals.'),
(4, 'LawfulNeutral', 'Characters who prioritize order, structure, and adherence to laws or codes without necessarily being concerned with moral considerations. They may serve as enforcers of laws or strict adherents to traditions and regulations.'),
(5, 'TrueNeutral', 'Characters who maintain a balance between good and evil, law and chaos. They often act in their self-interest or pursue personal goals without significant regard for moral or ethical considerations.'),
(6, 'ChaoticNeutral', 'Characters who prioritize personal freedom and individualism above all else. They may act impulsively, unpredictably, or selfishly, pursuing their own desires or goals without concern for laws, rules, or the well-being of others.'),
(7, 'LawfulEvil', 'Characters who prioritize order and control while exploiting others for personal gain or advancing their own agendas. They may use legal or hierarchical systems to oppress or manipulate others, often adhering to strict codes of conduct to achieve their nefarious goals.'),
(8, 'NeutralEvil', 'Characters who are primarily concerned with their own interests and are willing to harm others to achieve their goals. They lack the strict adherence to laws or codes of conduct seen in lawful evil characters and may act in a more opportunistic or self-serving manner.'),
(9, 'ChaoticEvil', 'Characters who revel in chaos, destruction, and the infliction of suffering. They have little regard for laws, morality, or the well-being of others, instead embracing anarchy and mayhem to satisfy their own desires or whims.');

-- class
INSERT INTO `class` (`class_id`, `class_name`, `class_description`) VALUES
(1, 'Barbarian', 'Masters of primal rage and raw power, barbarians channel their fury into devastating attacks, shrugging off wounds as they unleash chaos on the battlefield.'),
(2, 'Bard', 'Charismatic performers and wielders of magic, bards use their music and charm to inspire allies, manipulate emotions, and cast powerful spells.'),
(3, 'Cleric', 'Devoted servants of divine power, clerics channel the energy of their deity to heal the wounded, banish the undead, and smite the foes of their faith.'),
(4, 'Druid', 'Guardians of the natural world, druids harness the forces of nature to shape-shift, cast spells, and protect the balance of ecosystems.'),
(5, 'Fighter', 'Masters of martial combat, fighters excel in a variety of weapons and tactics, from sword and shield to archery and dual-wielding, making them formidable foes on the battlefield.'),
(6, 'Monk', 'Disciplined warriors of mind and body, monks harness their inner chi to perform incredible feats of agility and strength, striking with precision and speed.'),
(7, 'Paladin', 'Champions of righteousness and virtue, paladins swear oaths to uphold justice and defend the innocent, wielding divine magic and martial prowess in service to their cause.'),
(8, 'Ranger', 'Skilled trackers and wilderness experts, rangers roam the wilds with unmatched proficiency in hunting, survival, and archery, forming bonds with animals and harnessing natural magic.'),
(9, 'Rogue', 'Masters of stealth and deception, rogues excel in the art of subterfuge, using cunning tactics, lock-picking skills, and deadly precision to outmaneuver their foes.'),
(10, 'Sorcerer', 'Born with innate magical talent, sorcerers command powerful arcane forces, casting spells with raw charisma and tapping into their bloodline to unleash elemental powers and otherworldly abilities.');

-- species
INSERT INTO `species` (`species_id`, `species_name`, `species_description`) VALUES
(1, 'Human', 'Humans are a diverse and adaptable species known for their ambition, resilience, and capacity for innovation. With lifespans typically spanning several decades, humans exhibit a wide range of physical features, cultural traditions, and societal structures. From bustling cities to remote villages, humans thrive in various environments, driven by their insatiable curiosity and endless capacity for growth and change.'),
(2, 'Elf', 'Graceful and long-lived, elves are beings of ethereal beauty and ancient wisdom. Their slender frames and pointed ears mark them as beings of the Feywild, where they share a deep connection to nature and magic. Elves are often attuned to the rhythms of the natural world, dwelling in harmonious communities within ancient forests or secluded enclaves hidden from mortal eyes. Gifted with keen senses and an innate understanding of arcane energies, elves excel as artisans, scholars, and guardians of ancient knowledge.'),
(3, 'Dwarf', 'Stout and hardy, dwarves are renowned for their craftsmanship, endurance, and unwavering determination. Originating from the mountainous regions deep within the earth, dwarves have developed a rich culture centered around mining, metalwork, and stonemasonry. With sturdy frames and thick beards, they are well-suited to withstand the rigors of their subterranean homes and excel in forging weapons, armor, and intricate works of art. Despite their gruff exterior, dwarves possess a strong sense of loyalty and honor, valuing kinship and tradition above all else.'),
(4, 'Halfling', 'Small in stature but full of spirit, halflings are a jovial and adventurous folk known for their love of good food, simple pleasures, and close-knit communities. With rosy cheeks and cheerful dispositions, halflings embrace life with gusto, finding joy in laughter, song, and camaraderie. Often dwelling in idyllic villages nestled amidst rolling hills or fertile farmlands, halflings lead lives of contentment and curiosity, ever eager to explore the world beyond their doorstep and share tales of their adventures around the hearth.'),
(5, 'Dragonborn', 'Proud and noble, dragonborn are descendants of mighty dragons, bearing physical traits such as scales, claws, and breath weapons that reflect their draconic heritage. With powerful bodies and fiery spirits, dragonborn are often revered as warriors, leaders, and champions of honor and justice. Many dragonborn societies are organized around clans or tribes, each venerating a different aspect of draconic power and wisdom. Whether as guardians of ancient dragon hoards or valiant defenders of their homeland, dragonborn are renowned for their courage, loyalty, and unwavering resolve.'),
(6, 'Tiefling', 'Possessing a lineage tied to the infernal realms, tieflings bear physical traits such as horns, tails, and fiendish visages that set them apart from other mortal races. Though often subjected to prejudice and mistrust due to their appearance, tieflings possess inner strength and resilience forged by their infernal ancestry. Many tieflings channel their innate magical abilities to pursue careers as sorcerers, warlocks, or rogues, wielding their infernal powers with cunning and determination. Despite their troubled past, tieflings are capable of great compassion and empathy, seeking to prove their worth through deeds of bravery and selflessness.'),
(7, 'Gnome', 'Curious and inventive, gnomes are a whimsical and creative race known for their technological prowess, love of tinkering, and boundless curiosity. With nimble fingers and keen minds, gnomes excel as inventors, engineers, and artisans, crafting fantastical contraptions and intricate works of art that defy explanation. Many gnomes live in bustling cities or hidden workshops filled with whirring gears, bubbling potions, and arcane experiments, where they pursue their passions and share their discoveries with like-minded tinkerers.'),
(8, 'Half-Elf', 'Bridging the worlds of humans and elves, half-elves possess a unique blend of grace, adaptability, and charisma. With the physical beauty of their elven heritage and the versatility of their human ancestry, half-elves often find themselves drawn to a wide range of pursuits, from diplomacy and exploration to magic and martial arts. Gifted with keen intuition and a talent for diplomacy, many half-elves serve as mediators, ambassadors, or adventurers, forging bonds of friendship and understanding between their two ancestral kin.'),
(9, 'Orc', 'Strong and formidable, orcs are a proud and fiercely independent race known for their martial prowess, fierce loyalty, and deep connection to the natural world. With muscular frames and savage instincts, orcs excel as warriors, hunters, and shamans, drawing strength from their tribal traditions and ancestral spirits. Many orcs live in close-knit communities governed by codes of honor and respect, where bonds of kinship and brotherhood are forged through shared trials and triumphs. Despite their fearsome reputation, orcs are capable of great compassion and camaraderie, standing united against common foes and defending their homelands with unyielding resolve.'),
(10, 'Lizardfolk', 'Primal and enigmatic, lizardfolk are reptilian creatures known for their stoic demeanor, tribal societies, and deep connection to the natural world. With scaly hides and keen senses, lizardfolk are well-suited to their swampy or jungle habitats, where they live in harmony with the rhythms of nature. Many lizardfolk tribes are governed by shamanic traditions and communal rituals, where elders and spiritual leaders guide their people with wisdom and foresight. Despite their reserved nature, lizardfolk are fiercely protective of their territories and kin, defending their homes with tooth and claw against any who would threaten their way of life.');

-- level
INSERT INTO `level` (`level_id`, `level_name`, `level_description`) VALUES
(1, 'Level1', 'The lowest possible level.'),
(2, 'Level2', 'Slightly more experienced, gaining proficiency and a few new abilities.'),
(3, 'Level3', 'Competent adventurers, honing their skills and unlocking more powerful abilities.'),
(4, 'Level4', 'Seasoned adventurers, mastering their chosen path and gaining significant improvements in their abilities.'),
(5, 'Level5', 'Experienced adventurers, reaching a milestone where they gain access to more potent spells and abilities.'),
(6, 'Level6', 'Accomplished adventurers, becoming formidable forces in their chosen fields, with access to even greater powers.'),
(7, 'Level7', 'Seasoned veterans, mastering their craft and demonstrating exceptional skill and expertise.'),
(8, 'Level8', 'Expert adventurers, pushing the boundaries of their abilities and achieving remarkable feats.'),
(9, 'Level9', 'Elite champions, standing among the greatest heroes, with access to unparalleled powers and abilities.'),
(10, 'Level10', 'Legendary heroes, reaching the pinnacle of their strength and prowess, capable of facing the most formidable challenges and shaping the fate of worlds.');

-- region
INSERT INTO `region` (`region_id`, `region_name`, `region_description`) VALUES
(1, 'AmberdaleVillage', 'A picturesque settlement nestled among rolling hills and golden fields, Amberdale is known for its idyllic beauty and close-knit community. Farmers tend to lush crops while craftsmen ply their trades in quaint workshops, creating a peaceful haven amidst the surrounding wilderness.'),
(2, 'BalewoodCity', 'A bustling metropolis built amidst towering trees and verdant forests, Balewood City is a hub of commerce and culture. Its streets bustle with merchants peddling exotic wares, while scholars pore over ancient tomes in grand libraries, making it a vibrant center of activity and innovation.'),
(3, 'CrookedMarsh', 'A sprawling expanse of tangled wetlands and murky waters, Crooked Marsh is a haven for smugglers, outlaws, and creatures of the night. Its twisting waterways and treacherous bogs conceal hidden dangers and ancient secrets, making it a place of mystery and peril.'),
(4, 'DuskwoodForest', 'A dark and foreboding woodland cloaked in shadow, Duskwood Forest is home to eerie whispers and lurking horrors. Haunted ruins and forgotten graveyards dot its landscape, shrouded in tales of curses and lost souls, creating an atmosphere of dread and unease.'),
(5, 'EvermistLake', 'A tranquil oasis of crystal-clear waters and lush foliage, Evermist Lake is a sanctuary for wildlife and wanderers alike. Its peaceful shores offer respite from the chaos of the outside world, while its mystical mists conceal ancient mysteries waiting to be discovered.'),
(6, 'FrostpeakGlacier', 'A frigid wasteland of ice and snow, Frostpeak Glacier is home to towering mountains and treacherous crevasses. Brutal blizzards and savage beasts make it a harsh and unforgiving landscape, yet its frozen depths hold secrets of great power and ancient civilizations.'),
(7, 'MiasmicRuins', 'A desolate landscape of crumbling ruins and toxic mists, the Miasmic Ruins are a testament to a bygone era of glory and decay. Haunted by restless spirits and twisted abominations, its cursed halls are a realm of darkness and despair.'),
(8, 'MoonlightCove', 'A serene coastal town bathed in the soft glow of moonlight, Moonlight Cove is known for its breathtaking vistas and peaceful atmosphere. Fishermen ply its tranquil waters while artists capture its beauty on canvas, making it a haven for dreamers and romantics.'),
(9, 'ShadowfenSwamp', 'A murky labyrinth of tangled vines and murky waters, Shadowfen Swamp is a place of ancient magic and forgotten horrors. Its shifting marshlands conceal hidden dangers and lost treasures, shrouded in mist and mystery.'),
(10, 'SunsetPeak', 'A majestic mountain range bathed in the warm hues of twilight, Sunset Peak is a land of rugged beauty and untamed wilderness. Its towering peaks and sweeping valleys are home to hardy adventurers and reclusive hermits, drawn by its natural splendor and untapped potential.');

-- difficulty
INSERT INTO `difficulty` (`difficulty_id`, `difficulty_name`, `difficulty_description`) VALUES
(1, 'VeryEasy', 'This level is perfect for beginners or those looking for a relaxed experience. Challenges are minimal, and success is almost guaranteed with little effort or skill required.'),
(2, 'Easy', 'Slightly more challenging than Very Easy, this level still offers a relatively gentle experience. Players may encounter minor obstacles, but they can progress comfortably with minimal frustration.'),
(3, 'Medium', 'The standard difficulty level suitable for most players. Expect a balanced experience with a fair amount of challenge. Players will need to apply some strategy and skill to overcome obstacles and enemies.'),
(4, 'Hard', 'Recommended for experienced players seeking a greater challenge. Expect tougher enemies, more complex puzzles, and a higher level of difficulty overall. Success may require careful planning and precise execution.'),
(5, 'VeryHard', 'Reserved for seasoned veterans looking for the ultimate test of skill. This level offers extreme challenges, punishing encounters, and unforgiving gameplay mechanics. Success is hard-won and requires mastery of game mechanics and tactics.');

-- faction
INSERT INTO `faction` (`faction_id`, `faction_name`, `faction_description`) VALUES
(1, 'BlackHandSyndicate', 'A secretive criminal organization specializing in smuggling, assassination, and illicit trade, exerting influence through fear and manipulation.'),
(2, 'CouncilOfMages', 'A prestigious society of arcane spellcasters dedicated to the study and preservation of magic, wielding great power and knowledge in the pursuit of mystical mastery.'),
(3, 'Dawnbringers', 'A noble order of knights and warriors sworn to protect the innocent and uphold justice, standing as beacons of hope in times of darkness.'),
(4, 'EmeraldEnclave', 'Guardians of the natural world, druids, rangers, and allies work to preserve the balance of nature, defending wilderness areas and opposing threats to the environment.'),
(5, 'HarbingersOfChaos', 'Agents of discord and upheaval, followers of chaos and destruction who seek to sow disorder and bring down established order through violence and anarchy.'),
(6, 'IronforceLegion', 'A formidable military organization renowned for its discipline and strength, serving as the bulwark against external threats and enforcing the will of rulers.'),
(7, 'OrderOfTheBlade', 'Elite warriors and mercenaries bound by honor and duty, wielding their martial prowess to uphold justice and protect the weak.'),
(8, 'ScarletBrotherhood', 'A shadowy network of spies, assassins, and conspirators, working behind the scenes to manipulate events and further their own agenda of power and control.'),
(9, 'ThievesGuild', 'Masters of stealth and deception, thieves, rogues, and burglars operate in the underworld, stealing treasures and secrets for profit and influence.'),
(10, 'WardensOfTheAstralKeep', 'Protectors of arcane knowledge and artifacts, scholars, wizards, and guardians safeguard ancient lore and magical relics from misuse and destruction.');

-- relationship
INSERT INTO `relationship` (`relationship_id`, `relationship_name`, `relationship_description`) VALUES
(1, 'Alliance', 'A bond formed between individuals or groups with shared goals or interests, working together towards a common purpose or mutual benefit.'),
(2, 'Enmity', 'A state of hostility or animosity between individuals or groups, characterized by conflict and opposition.'),
(3, 'Family', 'A bond forged by blood or close kinship, marked by love, loyalty, and support through thick and thin.'),
(4, 'Mentorship', 'A relationship in which one individual imparts wisdom, guidance, and knowledge to another, nurturing their growth and development.'),
(5, 'Partnership', 'A cooperative relationship between individuals or entities, pooling resources and efforts to achieve shared objectives or mutual success. Less formal than an alliance.'),
(6, 'Rivalry', 'A competitive relationship between individuals or groups, driven by a desire to outperform or surpass one another in skill, achievement, or status.'),
(7, 'Romance', 'A deep emotional and often physical bond between individuals, characterized by love, passion, and intimacy.'),
(8, 'Truce', 'A temporary cessation of hostilities or conflict between opposing parties, often negotiated to allow for peaceful resolution or mutual benefit.');

-- inventory
INSERT INTO `inventory` (`inventory_id`, `inventory_name`, `inventory_description`) VALUES
(1, 'EldricIronheartInventory', 'Inventory of Eldric Ironheart.'),
(2, 'ThalwynBrightwoodInventory', 'Inventory of Thalwyn Brightwood.'),
(3, 'LyraShadowdancerInventory', 'Inventory of Lyra Shadowdancer.'),
(4, 'AranweSilversongInventory', 'Inventory of Aranwe Silversong.'),
(5, 'DurinStonehammerInventory', 'Inventory of Durin Stonehammer.'),
(6, 'TillyGreenbottleInventory', 'Inventory of Tilly Greenbottle.'),
(7, 'RurikGearsparkInventory', 'Inventory of Rurik Gearspark.'),
(8, 'GrakkaInventory', 'Inventory of Grakka.'),
(9, 'ElaraWindrunnerInventory', 'Inventory of Elara Windrunner.'),
(10, 'DraxusFlameheartInventory', 'Inventory of Draxus Flameheart.');

-- item_type
INSERT INTO `item_type` (`item_type_id`, `item_type_name`, `item_type_description`) VALUES
(1, 'Amulet', 'A magical pendant worn around the neck, imbued with protective or enhancing enchantments to aid the wearer.'),
(2, 'Artifact', 'An ancient and powerful item of great significance, often possessing unique abilities or legendary origins.'),
(3, 'Armour', 'Protective gear worn on the body, such as suits of plate mail, chainmail, or leather, providing defense against physical attacks.'),
(4, 'Potion', 'A magical concoction contained in a vial, providing temporary or permanent enhancements to the drinker\'s abilities or attributes.'),
(5, 'Ring', 'A magical band worn on the finger, imbued with mystical properties such as enhancing abilities, providing protection, or granting special abilities.'),
(6, 'Scroll', 'A magical parchment inscribed with spells or incantations, allowing non-spellcasters to cast spells by reading from the scroll.'),
(7, 'Staff', 'A long, slender rod imbued with magical energies, often wielded by spellcasters to channel their magical abilities or cast spells.'),
(8, 'Tool', 'A non-magical item used for a specific purpose or trade, such as lockpicks, thieves\' tools, or artisan\'s tools.'),
(9, 'Weapon', 'A tool used for combat, such as swords, axes, bows, or staves, often imbued with magical properties or enhancements.'),
(10, 'WondrousItem', 'A magical object of extraordinary power or utility, possessing unique abilities or properties that defy conventional explanation.');

-- rarity
INSERT INTO `rarity` (`rarity_id`, `rarity_name`, `rarity_description`) VALUES
(1, 'Common', 'Items that are widely available and easily accessible, with basic abilities or attributes.'),
(2, 'Uncommon', 'Items that are somewhat rare but still attainable through regular means, possessing slightly more powerful or unique traits.'),
(3, 'Rare', 'Items that are difficult to find and highly sought after, often possessing powerful abilities or extraordinary qualities.'),
(4, 'VeryRare', 'Items that are exceedingly rare and legendary, coveted by adventurers and collectors alike for their incredible power or significance.'),
(5, 'Epic', 'Items of epic status, possessing unparalleled abilities or qualities.'),
(6, 'Legendary', 'Items of immense power and significance, revered as the pinnacle of their kind and sought after by heroes and rulers alike.'),
(7, 'Mythic', 'Items of mythic proportions, with powers and abilities that transcend mortal understanding, shaping the course of history and legend for generations to come.');

-- item
INSERT INTO `item` (`item_id`, `item_name`, `item_type_id`, `rarity_id`, `item_description`) VALUES
(1, 'AmuletOfProtection', 1, 3, 'A magical pendant imbued with defensive enchantments, granting its wearer enhanced resistance against physical and magical attacks.'),
(2, 'BracersOfArchery', 10, 5, 'Wrist guards enchanted to improve the accuracy and range of ranged attacks, empowering the wearer\'s bow or crossbow skills.'),
(3, 'DragonbaneBlade', 9, 7, 'A mythical sword forged with materials capable of slaying dragons, dealing additional damage against draconic foes.'),
(4, 'ElixirOfInvisibility', 4, 2, 'A potent potion that renders the drinker invisible for a limited duration, allowing for stealthy movement and evasion of enemies.'),
(5, 'GlovesOfThievery', 10, 4, 'Magical gloves that enhance the wearer\'s dexterity and sleight of hand, granting proficiency in pickpocketing and lockpicking.'),
(6, 'MedallionOfDivineFavor', 1, 6, 'A holy symbol imbued with the blessings of a deity, granting its wearer divine protection and bolstering their abilities in combat.'),
(7, 'RingOfElementalControl', 5, 5, 'A ring attuned to the elemental forces of nature, allowing the wearer to manipulate and command fire, water, air, or earth to their will.'),
(8, 'ScrollOfSpellcasting', 6, 1, 'A magical scroll inscribed with a single-use spell, allowing non-spellcasters to cast spells beyond their normal capabilities.'),
(9, 'StaffOfTheArchmagi', 7, 4, 'A powerful magical staff wielded by master spellcasters, capable of channeling immense arcane energy and casting potent spells.'),
(10, 'TomeOfAncientKnowledge', 10, 6, 'A rare and valuable tome containing ancient wisdom and secrets, granting its reader profound insights into magic, history, and the mysteries of the universe.');

-- inventory_item
INSERT INTO `inventory_item` (`inventory_item_id`, `inventory_id`, `item_id`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 5),
(4, 4, 2),
(5, 5, 6),
(6, 6, 10),
(7, 7, 4),
(8, 8, 8),
(9, 9, 9),
(10, 10, 7);

-- characters
INSERT INTO `characters` (`character_id`, `player_id`, `character_surname`, `character_forename`, `character_alias`, `character_type_id`, `inventory_id`, `class_id`, `region_id`, `species_id`, `level_id`, `alignment_id`, `character_backstory`) VALUES
(1, 1, 'Ironheart', 'Eldric', 'The Brave', 1, 1, 1, 2, 1, 7, 3, 'Eldric Ironheart, a barbarian from Balewood City, grew up in poverty amidst corruption. Eldric\'s parents instilled compassion and a drive to rebel against tyranny. Embracing a chaotic sense of justice, Eldric trained in the wilderness, leading raids to liberate the oppressed humans. Despite sacrifices and scars, Eldric remains unwavering, fighting for freedom and justice. With axe and fiery heart, roaming the wilds, a symbol of hope and a fierce guardian against tyranny.'),
(2, 2, 'Brightwood', 'Thalwyn', 'The Wise', 1, 2, 10, 7, 6, 5, 8, 'Thalwyn Brightwood, known as \"The Wise,\" is a tiefling sorcerer hailing from the Miasmic Ruins. Growing up amidst decay and darkness, Thalwyn learned to harness innate magical abilities for personal gain. Cunning and manipulative, Thalwyn operates under the guise of wisdom, using charm and intellect to deceive those close. Driven by a desire for power and control, Thalwyn schemes in the shadows, orchestrating events to further Thalwyn\'s own ambitions. Neutrality allows adaptability to any situation, exploiting opportunities for benefit without concern for moral considerations.'),
(3, 3, 'Shadowdancer', 'Lyra', 'The Temptress', 1, 3, 8, 9, 1, 3, 4, 'Lyra Shadowdancer, a human ranger from Shadowfen Swamp, embodies the balanced ethos of lawful neutrality. Trained in survival and combat, Lyra adheres to a strict code of conduct, navigating the swamp\'s dangers with unwavering dedication. Neither swayed by chaos nor bound by strict order, Lyra defends the swamp\'s inhabitants and its delicate ecosystem. With compassion and vigilance, Lyra stands as a silent guardian, upholding the laws of nature and preserving the balance of Shadowfen.'),
(4, NULL, 'Silversong', 'Aranwe', 'The Graceful', 2, 4, 4, 10, 2, 2, 2, 'In the tranquil embrace of Sunset Peak, Aranwe Silversong, an elf of exceptional grace and boundless empathy, found their calling amidst the whispers of the natural world. Raised beneath the verdant canopy of ancient forests, Aranwe\'s affinity for the spirits of the land blossomed from a young age, guiding them along the path of the druid. Under the tutelage of wise elders, Aranwe honed their connection to nature\'s primal forces, becoming a steward of the delicate balance between civilization and the wilds. Known as \"the Graceful,\" Aranwe devoted themselves to tending to the needs of both the land and its inhabitants, offering solace to the wounded and protection to the defenseless.'),
(5, NULL, 'Stonehammer', 'Durin', '', 2, 5, 6, 7, 3, 10, 6, 'In the depths of the Miasmic Ruins, Durin Stonehammer, a dwarven monk, walks a path of chaotic neutrality. Raised amidst mystery, Durin embraces chaos, seeking secrets within the ruins. Despite unpredictability, they champion justice for the oppressed, wielding martial prowess in their quest for change. In their wake, they leave a legacy of transformation, a testament to chaos\'s power in a stagnant world.'),
(6, NULL, 'Greenbottle', 'Tilly', '', 2, 6, 3, 5, 4, 1, 1, 'In the quaint village of Evermist Lake resides Tilly Greenbottle, a halfling cleric devoted to the principles of law and goodness. From a young age, Tilly felt a calling to serve others, drawn to the teachings of compassion and righteousness. Raised in the heart of the village, Tilly learned the ways of healing and devotion from their family, who were revered as caretakers of the community. Guided by a strong sense of duty and morality, Tilly\'s faith in the divine grew, shaping their path towards becoming a cleric. As they matured, Tilly\'s commitment to upholding justice and aiding those in need became unwavering. They dedicated themselves to serving as a beacon of hope and guidance in Evermist Lake, offering solace to the weary and aid to the afflicted.'),
(7, NULL, 'Gearspark', 'Rurik', '', 2, 7, 7, 6, 7, 8, 5, 'In the frosty reaches of Frostpeak Glacier, amidst the icy winds and towering peaks, resides Rurik Gearspark, a gnome paladin of enigmatic origin and true neutral disposition. Born into the rugged landscape of the glacier, Rurik\'s early years were marked by solitude and introspection. Raised by a tribe of nomadic gnomes who traversed the icy expanse in search of sustenance and shelter, Rurik learned the ways of survival and self-reliance from a young age. Yet, unlike their kin who adhered to strict codes of morality, Rurik walked a path of neutrality, navigating the complexities of the world with a sense of detachment and equilibrium.'),
(8, NULL, '', 'Grakka', 'The Unyielding', 2, 8, 5, 3, 9, 3, 7, 'In the murky depths of Crooked Marsh, amidst the tangled vines and fetid waters, dwells Grakka, an orc fighter of formidable strength and ruthless ambition. From their earliest days, Grakka was shaped by the unforgiving landscape of the marsh, where survival often meant embracing the darkest aspects of one\'s nature. Raised among a tribe of orc warriors who ruled the marsh with an iron fist, Grakka learned the ways of combat and conquest from a young age. Their prowess in battle was unmatched, their ferocity on the battlefield earning them the respect and fear of their kin. They became known as \"the Unyielding,\" a title whispered with a mixture of awe and dread throughout the marshlands.'),
(9, NULL, 'Windrunner', 'Elara', '', 2, 9, 9, 4, 8, 4, 9, 'In the depths of Duskwood Forest, shrouded in darkness and mystery, lurks Elara Windrunner, a half-elf rogue of formidable skill and chaotic evil disposition. Born of a union between an elven wanderer and a human thief, Elara\'s early years were marked by deception and treachery. Raised in the shadows of Duskwood, Elara learned the ways of stealth and subterfuge from a young age, their natural talents honed by years of survival in the unforgiving wilderness. With each passing day, their lust for power and excitement grew, driving them to embrace the darker aspects of their nature. Fueled by a desire for chaos and destruction, Elara roamed the forest with reckless abandon, leaving a trail of theft and deceit in their wake. They cared little for the well-being of others, viewing them as mere pawns to be manipulated and discarded at will.'),
(10, NULL, 'Flameheart', 'Draxus', 'The Oathbreaker', 2, 10, 2, 1, 5, 9, 6, 'In the tranquil village of Amberdale, nestled amidst rolling hills and golden fields, resides Draxus Flameheart, a dragonborn bard of unparalleled talent and chaotic neutral disposition. Born beneath the watchful gaze of the Amberdale elders, Draxus\'s early years were filled with tales of heroism and adventure, fueling their imagination and stirring their wanderlust. Inspired by the legends of old, they set out on a journey of self-discovery, eager to explore the world beyond the confines of their village. As they traveled from town to town, Draxus\'s chaotic nature revealed itself, their path meandering and unpredictable. They embraced the freedom of the open road, reveling in the thrill of new experiences and the excitement of the unknown. Yet, beneath their carefree exterior lay a heart filled with empathy and compassion. Draxus used their talents not only to entertain, but also to uplift and inspire those they encountered on their travels. ');

-- quest
INSERT INTO `quest` (`quest_id`, `quest_name`, `region_id`, `difficulty_id`, `quest_description`) VALUES
(1, 'AncientArtifact', 1, 1, 'Rumors speak of a powerful artifact hidden within the depths of ancient ruins, said to hold the key to unlocking untold power. Brave the perilous journey through crumbling corridors and trap-laden chambers, facing ancient guardians and rival adventurers vying for the artifact\'s secrets. But beware, for the relic\'s true power may be more than mere mortals can control.'),
(2, 'BountyHunt', 2, 1, 'Answer the call of a lucrative bounty contract, tasked with tracking down and apprehending or eliminating a notorious criminal or fearsome creature terrorizing the land. Navigate through dense forests, treacherous swamps, or shadowy alleyways as you pursue your quarry, facing danger and intrigue at every turn. Will you emerge victorious and claim your reward, or will the tables be turned as the hunter becomes the hunted?'),
(3, 'CursedCurse', 3, 2, 'A dark curse has befallen a once-thriving village, twisting its inhabitants into monstrous forms and spreading misery and despair. Delve into the village\'s troubled past and uncover the origins of the curse, facing haunted ruins, malevolent spirits, and sinister cultists in your quest to break the curse\'s hold. But be warned, for some curses are more insidious than they seem, and breaking them may come at a great cost.'),
(4, 'DragonsHoard', 4, 2, 'Legends tell of a fearsome dragon whose lair is filled with untold riches and magical treasures beyond imagination. Steel your nerves and gather a band of brave adventurers as you journey to the heart of the dragon\'s lair, facing deadly traps, cunning guardians, and the ever-watchful gaze of the dragon itself. But beware, for the dragon\'s hoard is fiercely guarded, and only the most cunning and courageous will claim its treasures.'),
(5, 'EternalElixir', 5, 3, 'Seek out the fabled Eternal Elixir, a legendary potion said to grant eternal life or boundless power to those who possess it. Traverse treacherous landscapes, navigate ancient ruins, and outwit cunning adversaries as you search for clues to the elixir\'s whereabouts. But be wary, for many have sought the elixir before you, and not all who seek its power have noble intentions.'),
(6, 'FeywildFolly', 6, 3, 'Enter the enchanted realm of the Feywild on a quest to retrieve a lost artifact or rescue a captive held captive by mischievous fey creatures. Navigate through whimsical landscapes filled with colorful flora and fauna, and outwit cunning fey creatures with trickery and diplomacy. But beware, for the Feywild is a realm of unpredictable magic and ever-changing landscapes, where nothing is as it seems.'),
(7, 'GuardiansGauntlet', 7, 4, 'Test your mettle in a series of trials and challenges set by powerful guardians, each more formidable than the last. Navigate through ancient temples, treacherous dungeons, and mystical labyrinths as you prove your worth and earn the favor of the guardians. Unlock legendary treasures and ancient artifacts, but beware, for failure may come at a great cost.'),
(8, 'LostLore', 8, 4, ' Delve into the depths of ancient tomes and forgotten ruins in search of lost knowledge and hidden secrets. Piece together fragments of lore and decipher cryptic clues to uncover long-buried truths and unlock untold power. But beware, for some secrets are best left undisturbed, and delving too deep may awaken ancient evils best left forgotten.'),
(9, 'MysticalMystery', 9, 5, 'Solve a perplexing mystery shrouded in magic and intrigue, uncovering clues and unraveling hidden truths as you race against time to thwart sinister plots or unlock ancient prophecies. Navigate through shadowy alleyways, haunted mansions, and mystical realms as you confront malevolent sorcerers, ancient curses, and otherworldly horrors. But be warned, for the line between truth and illusion may blur, and not all mysteries have a happy ending.'),
(10, 'OrcishOnslaught', 10, 5, 'Rally your allies and fortify your defenses against a relentless onslaught of orc raiders threatening to overrun a settlement or kingdom. Lead your forces into battle against the orc horde, facing waves of ferocious warriors, towering beasts, and powerful warlords. Strategize and coordinate your defenses, and unleash devastating counterattacks to turn the tide of battle and secure victory against the orcish onslaught.');

-- character_faction
INSERT INTO `character_faction` (`character_faction_id`, `faction_id`, `character_id`) VALUES
(1, 10, 1),
(2, 2, 2),
(3, 9, 3),
(4, 4, 4),
(5, 8, 5),
(6, 3, 6),
(7, 5, 7),
(8, 1, 8),
(9, 7, 9),
(10, 6, 10);

-- character_quest
INSERT INTO `character_quest` (`character_quest_id`, `quest_id`, `character_id`) VALUES
(1, 10, 1),
(2, 5, 2),
(3, 3, 3),
(4, 4, 2),
(5, 7, 1),
(6, 2, 3),
(7, 1, 3),
(8, 6, 1),
(9, 8, 1),
(10, 9, 2);

-- character_relationship
INSERT INTO `character_relationship` (`character_relationship_id`, `relationship_id`, `character_id_1`, `character_id_2`) VALUES
(1, 1, 1, 2),
(2, 7, 1, 3),
(3, 2, 10, 3),
(4, 3, 2, 3),
(5, 4, 10, 9),
(6, 8, 8, 7),
(7, 6, 3, 5),
(8, 5, 1, 10),
(9, 2, 3, 10),
(10, 6, 2, 6);