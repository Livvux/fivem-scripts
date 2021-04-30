USE `essentialmode`;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('journalist', 'Weazel News', 0)
;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_weazel', 'Weazel News', 1),
;

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_weazel', 'Weazel News', 1),
	('society_taxe_weazel', 'Weazel News Taxe', 1)
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_weazel', 'Weazel News', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	('journalist', 0, 'interim', 'Praktikant', 100, '{}', '{}'),
	('journalist', 1, 'journalist', 'Journalist', 100, '{}', '{}'),
	('journalist', 2, 'reporter', 'Reporter', 100, '{}', '{}'),
	('journalist', 3, 'chief', 'Redaktionschef', 100, '{}', '{}'),
	('journalist', 4, 'boss'  , 'Geschäftsführer', 100, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('journal', 'Journal', 50, 0, 1),
	('journaux', 'Zeitungspaket', 25, 0, 1)
;
