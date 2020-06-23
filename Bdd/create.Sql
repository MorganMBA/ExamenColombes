-- -----------------------------------------------------
-- Schema mtc
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mtc` ;

-- -----------------------------------------------------
-- Schema mtc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mtc` DEFAULT CHARACTER SET utf8 ;
USE `mtc` ;

-- -----------------------------------------------------
-- Table `mtc`.`typeActif`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`typeActif` ;

CREATE TABLE IF NOT EXISTS `mtc`.`typeActif` (
  `idtypeActif` INT AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `nomComplet` VARCHAR(45) NULL,
  PRIMARY KEY (`idtypeActif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`actif`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`actif` ;

CREATE TABLE IF NOT EXISTS `mtc`.`actif` (
  `idactif` INT AUTO_INCREMENT,
  `type` INT NULL,
  `actif` VARCHAR(45) NULL,
  `remarque` VARCHAR(45) NULL,
  `nomComplet` VARCHAR(45) NULL,
  `prixLitre` DECIMAL(4,2) NULL,
  PRIMARY KEY (`idactif`),
  INDEX `FK_type_actif_idx` (`type` ASC) ,
  CONSTRAINT `FK_type_actif`
    FOREIGN KEY (`type`)
    REFERENCES `mtc`.`typeActif` (`idtypeActif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`age`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`age` ;

CREATE TABLE IF NOT EXISTS `mtc`.`age` (
  `idage` INT AUTO_INCREMENT,
  `age` VARCHAR(45) NULL,
  PRIMARY KEY (`idage`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`voieAdmin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`voieAdmin` ;

CREATE TABLE IF NOT EXISTS `mtc`.`voieAdmin` (
  `idvoieAdmin` INT NOT NULL AUTO_INCREMENT,
  `voieAdmin` VARCHAR(45) NULL,
  PRIMARY KEY (`idvoieAdmin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`categorie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`categorie` ;

CREATE TABLE IF NOT EXISTS `mtc`.`categorie` (
  `idcategorie` INT NOT NULL AUTO_INCREMENT,
  `categorie` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategorie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`pathologie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`pathologie` ;

CREATE TABLE IF NOT EXISTS `mtc`.`pathologie` (
  `idpathologie` INT NOT NULL AUTO_INCREMENT,
  `pathologie` VARCHAR(45) NULL,
  `remarque` VARCHAR(45) NULL,
  PRIMARY KEY (`idpathologie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`posologie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`posologie` ;

CREATE TABLE IF NOT EXISTS `mtc`.`posologie` (
  `idposologie` INT NOT NULL AUTO_INCREMENT,
  `pathologie` INT NULL,
  `age` INT NULL,
  `voieAdmin` INT NULL,
  `actif` INT NULL,
  `remarque` VARCHAR(45) NULL,
  PRIMARY KEY (`idposologie`),
  INDEX `FK_patho_idx` (`pathologie` ASC) ,
  INDEX `FK_voie_idx` (`voieAdmin` ASC) ,
  INDEX `FK_age_idx` (`age` ASC) ,
  INDEX `FK_actif_idx` (`actif` ASC) ,
  CONSTRAINT `FK_patho`
    FOREIGN KEY (`pathologie`)
    REFERENCES `mtc`.`pathologie` (`idpathologie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_voie`
    FOREIGN KEY (`voieAdmin`)
    REFERENCES `mtc`.`voieAdmin` (`idvoieAdmin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_age`
    FOREIGN KEY (`age`)
    REFERENCES `mtc`.`age` (`idage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_actif`
    FOREIGN KEY (`actif`)
    REFERENCES `mtc`.`actif` (`idactif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`pathoCategorie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`pathoCategorie` ;

CREATE TABLE IF NOT EXISTS `mtc`.`pathoCategorie` (
  `idappartient` INT NOT NULL AUTO_INCREMENT,
  `patho` INT NULL,
  `categorie` INT NULL,
  `remarque` VARCHAR(45) NULL,
  PRIMARY KEY (`idappartient`),
  INDEX `FK_cat_idx` (`categorie` ASC) ,
  INDEX `FK_path_idx` (`patho` ASC) ,
  CONSTRAINT `FK_cat`
    FOREIGN KEY (`categorie`)
    REFERENCES `mtc`.`categorie` (`idcategorie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_path`
    FOREIGN KEY (`patho`)
    REFERENCES `mtc`.`pathologie` (`idpathologie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`element`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`element` ;

CREATE TABLE IF NOT EXISTS `mtc`.`element` (
  `idelement` INT NOT NULL AUTO_INCREMENT,
  `element` VARCHAR(45) NULL,
  `couleur` VARCHAR(45) NULL,
  `saison` VARCHAR(45) NULL,
  `voix` VARCHAR(45) NULL,
  `sentimentExces` VARCHAR(45) NULL,
  `sentimentFaiblesse` VARCHAR(45) NULL,
  `sens` VARCHAR(45) NULL,
  `liquideOrganique` VARCHAR(45) NULL,
  `climat` VARCHAR(45) NULL,
  `ptCardinal` VARCHAR(45) NULL,
  `action` VARCHAR(45) NULL,
  `tissusOrganique` VARCHAR(45) NULL,
  `organeSens` VARCHAR(45) NULL,
  `mental` VARCHAR(45) NULL,
  `odeur` VARCHAR(45) NULL,
  `gout` VARCHAR(45) NULL,
  PRIMARY KEY (`idelement`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`organe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`organe` ;

CREATE TABLE IF NOT EXISTS `mtc`.`organe` (
  `idorgane` INT AUTO_INCREMENT,
  `organe` VARCHAR(45) NULL,
  `yin` TINYINT(1) NULL,
  `yang` TINYINT(1) NULL,
  PRIMARY KEY (`idorgane`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`eltOrgane`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`eltOrgane` ;

CREATE TABLE IF NOT EXISTS `mtc`.`eltOrgane` (
  `idelt-organe` INT NOT NULL AUTO_INCREMENT,
  `elt` INT NULL,
  `organe` VARCHAR(3) NULL,
  `remarque` VARCHAR(45) NULL,
  PRIMARY KEY (`idelt-organe`),
  UNIQUE INDEX `FK_org_idx` (`organe` ASC) ,
  UNIQUE INDEX `FK_elt_idx` (`elt` ASC) ,
  CONSTRAINT `FK_org`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_elt`
    FOREIGN KEY (`elt`)
    REFERENCES `mtc`.`element` (`idelement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`fctOrgane`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`fctOrgane` ;

CREATE TABLE IF NOT EXISTS `mtc`.`fctOrgane` (
  `idfctOrgane` INT NOT NULL AUTO_INCREMENT,
  `organe` VARCHAR(3) NULL,
  `fonction` VARCHAR(45) NULL,
  PRIMARY KEY (`idfctOrgane`),
  INDEX `fk_fct-org_idx` (`organe` ASC) ,
  CONSTRAINT `fk_fct-org`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`desequilibreOrgane`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`desequilibreOrgane` ;

CREATE TABLE IF NOT EXISTS `mtc`.`desequilibreOrgane` (
  `iddesequilibreOrgane` INT NOT NULL AUTO_INCREMENT,
  `organe` VARCHAR(3) NULL,
  `desequilibre` VARCHAR(45) NULL,
  PRIMARY KEY (`iddesequilibreOrgane`),
  INDEX `FK_desequilibre_idx` (`organe` ASC) ,
  CONSTRAINT `FK_desequilibre`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`pointMTC`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`pointMTC` ;

CREATE TABLE IF NOT EXISTS `mtc`.`pointMTC` (
  `idpointMTC` VARCHAR(5) NOT NULL,
  `remarque` VARCHAR(45) NULL,
  `localisation` VARCHAR(45) NULL,
  `organe` VARCHAR(3) NULL,
  INDEX `FK_org_idx` (`organe` ASC) ,
  PRIMARY KEY (`idpointMTC`),
  CONSTRAINT `FK_org`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mtc`.`fctOrgane`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`fctOrgane` ;

CREATE TABLE IF NOT EXISTS `mtc`.`fctOrgane` (
  `idfctOrgane` INT NOT NULL AUTO_INCREMENT,
  `organe` VARCHAR(3) NULL,
  `fonction` VARCHAR(45) NULL,
  PRIMARY KEY (`idfctOrgane`),
  CONSTRAINT `fk_fct-org`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`desequilibreOrgane`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`desequilibreOrgane` ;

CREATE TABLE IF NOT EXISTS `mtc`.`desequilibreOrgane` (
  `iddesequilibreOrgane` INT NOT NULL AUTO_INCREMENT,
  `organe` VARCHAR(3) NULL,
  `desequilibre` VARCHAR(45) NULL,
  PRIMARY KEY (`iddesequilibreOrgane`),
  CONSTRAINT `FK_desequilibre`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`pointMTC`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`pointMTC` ;

CREATE TABLE IF NOT EXISTS `mtc`.`pointMTC` (
  `idpointMTC` INT AUTO_INCREMENT,
  `remarque` VARCHAR(45) NULL,
  `localisation` VARCHAR(45) NULL,
  `organe` VARCHAR(3) NULL,
  PRIMARY KEY (`idpointMTC`),
  CONSTRAINT `FK_org`
    FOREIGN KEY (`organe`)
    REFERENCES `mtc`.`organe` (`idorgane`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`equivalent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`equivalent` ;

CREATE TABLE IF NOT EXISTS `mtc`.`equivalent` (
  `idequivalent` INT AUTO_INCREMENT,
  `point1` VARCHAR(5) NULL,
  `point2` VARCHAR(5) NULL,
  `remarque` VARCHAR(45) NULL,
  PRIMARY KEY (`idequivalent`),
  CONSTRAINT `FK_pt1`
    FOREIGN KEY (`point1`)
    REFERENCES `mtc`.`pointMTC` (`idpointMTC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_pt2`
    FOREIGN KEY (`point2`)
    REFERENCES `mtc`.`pointMTC` (`idpointMTC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mtc`.`soigne`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mtc`.`soigne` ;

CREATE TABLE IF NOT EXISTS `mtc`.`soigne` (
  `idsoigne` INT NOT NULL AUTO_INCREMENT,
  `point1` VARCHAR(5) NULL,
  `point2` VARCHAR(5) NULL,
  `point3` VARCHAR(5) NULL,
  `point4` VARCHAR(5) NULL,
  `patho` INT NULL,
  `remarque` VARCHAR(45) NULL,
  PRIMARY KEY (`idsoigne`),
  CONSTRAINT `FK_pt1`
    FOREIGN KEY (`point1`)
    REFERENCES `mtc`.`pointMTC` (`idpointMTC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_pt2`
    FOREIGN KEY (`point2`)
    REFERENCES `mtc`.`pointMTC` (`idpointMTC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK-pt3`
    FOREIGN KEY (`point3`)
    REFERENCES `mtc`.`pointMTC` (`idpointMTC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_pt4`
    FOREIGN KEY (`point4`)
    REFERENCES `mtc`.`pointMTC` (`idpointMTC`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_patho`
    FOREIGN KEY (`patho`)
    REFERENCES `mtc`.`pathologie` (`idpathologie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;