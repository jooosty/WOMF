CREATE DATABASE `WOMF`;

USE `WOMF`;

CREATE TABLE `WOMF` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titel VARCHAR(100) NOT NULL,
    Uitleg VARCHAR(100) NULL
);

INSERT INTO `WOMF` (`titel`, `Uitleg`) VALUES
('Free Pass', 'Free Pass, Normal game'),
('Preset Resolve', 'Play with Resolve the Colossus'),
('Oh Ooh Stinky', 'No Flash'),
('Kraken Slayer', 'Build Kraken slayer first item'),
('Usain Bolt', 'Only build items from movement speed tab'),
('Be Sussy', 'If AP, build AD and if AD vuild AP'),
('Robert Time', 'Build only green things (including Resolve as main rune'),
('Switcheroo', 'Switch first and secondary'),
('Mario Time', 'Build only red items (Including domination as main rune)'),
('Execute', 'Use Dark Harvest and build duskblade first item'),
('Preset Inpiration', 'Play with inspiration: The Timeless'),
('Panzermensch', 'Build only from the tank tav (Including starter item)'),
('Substitute', 'Switch chamos if available with someone, if not, re-spin'),
('Assistance', 'Build a support item as mythic'),
('Tickit to the Tropics', 'Take ghost and flash and leave your hoe'),
('Adoption Centrum', 'Support come on your lane (fuck the adc)'),
('Mercy main', 'Pick someone to respin, you respins to for yourself'),
('Charlotte Simp', 'Switch with the support'),
('Pablo Escobar', 'Pick someone to funnel your kills to. If you get a kill, int 1 kill'),
('Wait a minute', 'AFK for first 3 minutes'),
('Trash', 'Build Silvermere Dawn as first item'),
('Blind Monk', 'You are not allowed to have vision score, 4 vision score = 1 int'),
('Couples Court', 'Toxicity after every death/kill'),
('Amogus', 'Build the same as your enemy laner builds'),
('Preset Perfect', 'Use Precision: The Perfect runes'),
('Mordekaiser Mid?', 'Disable your HUD'),
('Arabic Funny', 'Zoom in maximum for the entire game'),
('Charlottes Diaper', 'Be babysit by the jungle, if jungle, respin'),
('Yakuza Forever', 'Only items from Attack Speed tab'),
('Yasuo Main', 'Spam the mastery emote for the entire game, no emote = respin'),
('Silent Night', 'Only items from Assassin tab'),
('Good Luck', 'Build active items only, not including starter item & boots'),
('League of Fitness', '1 Death = 3 Pushups'),
('Preset Executioner', 'Use Domination: The Executioner'),
('Aphrodite', 'Take Heal'),
('Hades', 'Take Ignite'),
('Out of Stock', 'No Mythic item'),
('Prototype', 'Use Prototype: Omnistone'),
('Mercenary', 'Youre only allowed to get kills on other kills'),
('AI', 'Take Cleanse and Exhaust'),
('Trash Ep.2', 'Build Mikaels Blessing as first item'),
('Za warudo', 'Buy Zhonyas Hourglass as first item'),
('It just works', 'Use Glacial Augment & Stridebreaker'),
('Shapalah', 'Only items from Fighter tab'),
('Pew Pew', 'Only items from Marksman tab'),
('Vision to Future', 'Finish Watchful Wardstone before buying a second item'),
('Preset Calamity', 'Use Sorcery: The Calamity runes'),
('Trash Ep.3', 'Build Chemtech Purifier as first item'),
('Gamer Girl', 'Only build items from the support tab'),
('Im Stuck Stepbro', 'You are stuck in your own lane, and cant get out'),
('The Eye of Destiny', 'Spin the Eye of Destiny') ;


CREATE TABLE `EOD` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titel VARCHAR(100) NOT NULL
);

INSERT INTO `EOD` (`titel`) VALUES
('Lucky, no extras '),
('Noone can have flash'),
('Everyone int 1 kill before 1:30'),
('Everyone has to switch lanes'),
('No mythic and no boots for anyone'),
('Additional challenge (Add an extra W.O.M.F. to everyone)'),
('Let the moonstone shine (Everyone build moonstone renewer)'),
('League of fitness X3 for everyone (Death = 9 Push ups)'),
('Aram (Everyone 1 lane)'),
('Never leave yout lane, Disable yout hud and Use dark harvest and build duskblade first item');