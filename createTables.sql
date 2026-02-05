-- Characters
CREATE TABLE Characters (
    characterID INT AUTO_INCREMENT PRIMARY KEY,
    characterName VARCHAR(100) NOT NULL,
    species VARCHAR(50) NOT NULL,
    isPlayerCharacter BOOLEAN NOT NULL,
    totalExperience INT DEFAULT 0,
    currentLevel INT,
    currentHP INT,
    maxHP INT,
    armorClass INT,
    alignment VARCHAR(50),
    profBonus INT
);

-- Items
CREATE TABLE Items (
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    itemName VARCHAR(50) NOT NULL UNIQUE,
    itemType VARCHAR(50),
    rarity VARCHAR(50),
    weight INT
);

-- Areas
CREATE TABLE Areas (
    areaID INT AUTO_INCREMENT PRIMARY KEY,
    areaType VARCHAR(50),
    areaName VARCHAR(50) NOT NULL UNIQUE
);

-- Quests
CREATE TABLE Quests (
    questID INT AUTO_INCREMENT PRIMARY KEY,
    questName VARCHAR(100) UNIQUE,
    questDescription TEXT,
    questLevel INT,
    areaID INT,
    FOREIGN KEY (areaID) REFERENCES Areas(areaID)
);

-- Monsters
CREATE TABLE Monsters (
    monsterID INT AUTO_INCREMENT PRIMARY KEY,
    monsterName VARCHAR(50) NOT NULL UNIQUE,
    maxHP INT NOT NULL,
    challengeRating INT,
    sourceBook VARCHAR(50),
    sourcePage INT,
    experiencePoints INT
);

-- Character_Items (Intersection)
CREATE TABLE Character_Items (
    characterID INT,
    itemID INT,
    quantity INT DEFAULT 1,
    isEquipped BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (characterID, itemID),
    FOREIGN KEY (characterID) REFERENCES Characters(characterID),
    FOREIGN KEY (itemID) REFERENCES Items(itemID)
);

-- Character_Quests (Intersection)
CREATE TABLE Character_Quests (
    characterID INT,
    questID INT,
    status VARCHAR(50),
    PRIMARY KEY (characterID, questID),
    FOREIGN KEY (characterID) REFERENCES Characters(characterID),
    FOREIGN KEY (questID) REFERENCES Quests(questID)
);
\
-- Monster Areas (Intersection)
CREATE TABLE Monster_Areas (
    monsterID INT,
    areaID INT,
    quantity INT DEFAULT 1,
    PRIMARY KEY (monsterID, areaID),
    FOREIGN KEY (monsterID) REFERENCES Monsters(monsterID),
    FOREIGN KEY (areaID) REFERENCES Areas(areaID)
);
