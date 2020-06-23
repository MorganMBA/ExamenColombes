USE `mydb`;
INSERT INTO `mydb`.`typeActif` (`idtypeActif`, `type`, `nomComplet`) VALUES (1, 'HE', 'Huile Essentielle');
INSERT INTO `mydb`.`typeActif` (`idtypeActif`, `type`, `nomComplet`) VALUES (2, 'HV', 'Huile Végétale');
INSERT INTO `mydb`.`typeActif` (`idtypeActif`, `type`, `nomComplet`) VALUES (3, 'Homéo', 'Homéopathie');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`age`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`age` (`idage`, `age`) VALUES (1, 'plus30mois');
INSERT INTO `mydb`.`age` (`idage`, `age`) VALUES (2, 'superieur7ans');
INSERT INTO `mydb`.`age` (`idage`, `age`) VALUES (3, 'superieur15ans');
INSERT INTO `mydb`.`age` (`idage`, `age`) VALUES (4, 'adulte');
INSERT INTO `mydb`.`age` (`idage`, `age`) VALUES (5, 'enceinte');
INSERT INTO `mydb`.`age` (`idage`, `age`) VALUES (6, 'epilepsie');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`voieAdmin`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`voieAdmin` (`idvoieAdmin`, `voieAdmin`) VALUES (1, 'Voie orale');
INSERT INTO `mydb`.`voieAdmin` (`idvoieAdmin`, `voieAdmin`) VALUES (2, 'Voie cutanée');
INSERT INTO `mydb`.`voieAdmin` (`idvoieAdmin`, `voieAdmin`) VALUES (3, 'Diffusion');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`categorie`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`categorie` (`idcategorie`, `categorie`) VALUES (1, 'relaxant');
INSERT INTO `mydb`.`categorie` (`idcategorie`, `categorie`) VALUES (2, 'sédatif');
INSERT INTO `mydb`.`categorie` (`idcategorie`, `categorie`) VALUES (3, 'digestif');
INSERT INTO `mydb`.`categorie` (`idcategorie`, `categorie`) VALUES (4, 'antioxydant');
INSERT INTO `mydb`.`categorie` (`idcategorie`, `categorie`) VALUES (5, 'assainissant');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`element`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`element` (`idelement`, `element`, `couleur`, `saison`, `voix`, `sentimentExces`, `sentimentFaiblesse`, `sens`, `liquideOrganique`, `climat`, `ptCardinal`, `action`, `tissusOrganique`, `organeSens`, `mental`, `odeur`, `gout`) VALUES (1, 'Eau', 'noir', 'hiver', 'gémissement', 'témérité', 'peur', 'ouïe', 'urine', 'froid', 'nord', 'concentration', 'os, dent', 'oreille', 'sagesse', 'putride', 'salé');
INSERT INTO `mydb`.`element` (`idelement`, `element`, `couleur`, `saison`, `voix`, `sentimentExces`, `sentimentFaiblesse`, `sens`, `liquideOrganique`, `climat`, `ptCardinal`, `action`, `tissusOrganique`, `organeSens`, `mental`, `odeur`, `gout`) VALUES (2, 'Bois', 'bleu-vert', 'printemps', 'cri', 'colère', 'lacheté', 'vue', 'larme', 'vent', 'est', 'mise en mouvement', 'tendon, ligament, muscle', 'oeil', 'imagination, créativité', 'rance', 'acide');
INSERT INTO `mydb`.`element` (`idelement`, `element`, `couleur`, `saison`, `voix`, `sentimentExces`, `sentimentFaiblesse`, `sens`, `liquideOrganique`, `climat`, `ptCardinal`, `action`, `tissusOrganique`, `organeSens`, `mental`, `odeur`, `gout`) VALUES (3, 'Feu', 'rouge', 'été', 'rire', 'hystérie', 'terreur', 'toucher', 'sueur', 'chaleur', 'sud', 'expansion', 'vaisseaux sanguins', 'langue', 'intelligence', 'brûlé', 'amer');
INSERT INTO `mydb`.`element` (`idelement`, `element`, `couleur`, `saison`, `voix`, `sentimentExces`, `sentimentFaiblesse`, `sens`, `liquideOrganique`, `climat`, `ptCardinal`, `action`, `tissusOrganique`, `organeSens`, `mental`, `odeur`, `gout`) VALUES (4, 'Terre', 'jaune', 'intersaison', 'chant', 'rumination', 'anxiété', 'gout', 'salive, lymphe', 'humidité', 'centre', 'distribution', 'mésenchyme, chair, muscle', 'bouche', 'méditation', 'parfumé', 'doux, sucré');
INSERT INTO `mydb`.`element` (`idelement`, `element`, `couleur`, `saison`, `voix`, `sentimentExces`, `sentimentFaiblesse`, `sens`, `liquideOrganique`, `climat`, `ptCardinal`, `action`, `tissusOrganique`, `organeSens`, `mental`, `odeur`, `gout`) VALUES (5, 'métal', 'blanc', 'automne', 'pleurs', 'agressivité', 'dépression, tristesse', 'odorat', 'secrétions nasales', 'sécheresse', 'ouest', 'intériorisation', 'peau', 'nez', 'instinct', 'acre', 'épicé');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`organe`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('P', 'Poumon', 1, 0);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('GI', 'Gros Intestin', 0, 1);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('C', 'Coeur', 1, 0);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('IG', 'Intestin Grêle', 0, 1);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('MC', 'Maître Coeur', 1, 0);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('TR', 'Triple Réchauffeur', 0, 1);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('F', 'Foie', 1, 0);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('VB', 'Vésicule Biliaire', 0, 1);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('RP', 'Rape-Pancréas', 1, 0);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('E', 'Estomac', 0, 1);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('R', 'Rein', 1, 0);
INSERT INTO `mydb`.`organe` (`idorgane`, `organe`, `yin`, `yang`) VALUES ('V', 'Vessie', 0, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`eltOrgane`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (1, 1, 'R', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (2, 1, 'V', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (3, 2, 'F', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (4, 2, 'VB', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (5, 3, 'C', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (6, 3, 'IG', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (7, 3, 'MC', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (8, 3, 'TR', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (9, 4, 'RP', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (10, 4, 'E', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (11, 5, 'P', NULL);
INSERT INTO `mydb`.`eltOrgane` (`idelt-organe`, `elt`, `organe`, `remarque`) VALUES (12, 5, 'GI', NULL);

COMMIT;

