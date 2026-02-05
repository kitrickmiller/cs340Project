-- Insert Areas
INSERT INTO Areas (areaName, areaType)
VALUES ('Silverwood Forest', 'Forest'),
('Ironhold City', 'City'),
('Storm Coast', 'Ocean'),
('Ashen Plains', 'Plains');

-- Insert Characters
INSERT INTO Characters (characterName, species, isPlayerCharacter, totalExperience, currentLevel,
 currentHP, maxHP, armorClass, alignment, profBonus)
VALUES ('Arin', 'Human', TRUE, 1500, 5, 40, 40, 16, 'Neutral Good', 3),
('Borin', 'Dwarf', TRUE, 2000, 6, 50, 50, 18, 'Lawful Neutral', 3),
('Celeste', 'Elf', TRUE, 1800, 5, 35, 35, 15, 'Chaotic Good', 3);   

-- Insert Items
INSERT INTO Items (itemName, itemType, rarity, weight)
VALUES ('Longsword', 'Weapon', 'Common', 3),
('Health Potion', 'Potion', 'Common', 1),
('Magic Ring', 'Accessory', 'Rare', 0);

-- Insert Monsters
INSERT INTO Monsters (monsterName, maxHP, challengeRating, sourceBook, sourcePage, experiencePoints)
VALUES ('Goblin', 30, 1, 'Monster Manual', 166, 200),
('Orc', 45, 2, 'Monster Manual', 246, 450),
('Dragon Wyrmling', 60, 4, 'Monster Manual', 86, 1100);

-- Insert Quests
INSERT INTO Quests
(questName, questDescription, questLevel, areaID)
VALUES ('Rescue Gnomes in Silverwood Forest', 'https://docs.google.com/document/d/1a2b3c4d5e6f7g8h9i0j', 3,
 (SELECT areaID FROM Areas WHERE areaName = 'Silverwood Forest')),
('Defend Ironhold City from Orc Attack', 'https://docs.google.com/document/d/2b3c4d5e6f7g8h9i0j1a', 5,
 (SELECT areaID FROM Areas WHERE areaName = 'Ironhold City')),
('Explore the Depths of Storm Coast', 'https://docs.google.com/document/d/3c4d5e6f7g8h9i0j1a2b', 4,
 (SELECT areaID FROM Areas WHERE areaName = 'Storm Coast'));


