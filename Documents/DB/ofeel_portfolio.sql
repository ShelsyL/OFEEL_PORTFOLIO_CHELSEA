-- MySQL Script generated by MySQL Workbench
-- Tue Apr 27 18:26:58 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ofeel_portfolio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ofeel_portfolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ofeel_portfolio` DEFAULT CHARACTER SET utf8 ;
USE `ofeel_portfolio` ;

-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`works`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`works` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `resume` VARCHAR(255) NULL,
  `description` TEXT NULL,
  `image` VARCHAR(45) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`categories` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `icone` VARCHAR(45) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`commentsOfWork`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`commentsOfWork` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudo` VARCHAR(45) NOT NULL,
  `content` TEXT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `work_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_commentsOfWork_works1_idx` (`work_id` ASC),
  CONSTRAINT `fk_commentsOfWork_works1`
    FOREIGN KEY (`work_id`)
    REFERENCES `ofeel_portfolio`.`works` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`articles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`articles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  `image` VARCHAR(45) NULL,
  `resume` VARCHAR(45) NULL,
  `created_at` VARCHAR(45) NOT NULL,
  `updated_at` VARCHAR(45) NOT NULL,
  `categorie_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_articles_categories1_idx` (`categorie_id` ASC),
  CONSTRAINT `fk_articles_categories1`
    FOREIGN KEY (`categorie_id`)
    REFERENCES `ofeel_portfolio`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`tags` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`commentsOfArticle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`commentsOfArticle` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudo` VARCHAR(45) NOT NULL,
  `content` TEXT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `article_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_commentsOfArticle_articles1_idx` (`article_id` ASC),
  CONSTRAINT `fk_commentsOfArticle_articles1`
    FOREIGN KEY (`article_id`)
    REFERENCES `ofeel_portfolio`.`articles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`works_has_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`works_has_categories` (
  `work_id` INT UNSIGNED NOT NULL,
  `categorie_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`work_id`, `categorie_id`),
  INDEX `fk_works_has_categories_categories1_idx` (`categorie_id` ASC),
  INDEX `fk_works_has_categories_works1_idx` (`work_id` ASC),
  CONSTRAINT `fk_works_has_categories_works1`
    FOREIGN KEY (`work_id`)
    REFERENCES `ofeel_portfolio`.`works` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_works_has_categories_categories1`
    FOREIGN KEY (`categorie_id`)
    REFERENCES `ofeel_portfolio`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`works_has_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`works_has_tags` (
  `work_id` INT UNSIGNED NOT NULL,
  `tag_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`work_id`, `tag_id`),
  INDEX `fk_works_has_tags_tags1_idx` (`tag_id` ASC),
  INDEX `fk_works_has_tags_works1_idx` (`work_id` ASC),
  CONSTRAINT `fk_works_has_tags_works1`
    FOREIGN KEY (`work_id`)
    REFERENCES `ofeel_portfolio`.`works` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_works_has_tags_tags1`
    FOREIGN KEY (`tag_id`)
    REFERENCES `ofeel_portfolio`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ofeel_portfolio`.`articles_has_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ofeel_portfolio`.`articles_has_tags` (
  `article_id` INT UNSIGNED NOT NULL,
  `tag_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`article_id`, `tag_id`),
  INDEX `fk_articles_has_tags_tags1_idx` (`tag_id` ASC),
  INDEX `fk_articles_has_tags_articles1_idx` (`article_id` ASC),
  CONSTRAINT `fk_articles_has_tags_articles1`
    FOREIGN KEY (`article_id`)
    REFERENCES `ofeel_portfolio`.`articles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_articles_has_tags_tags1`
    FOREIGN KEY (`tag_id`)
    REFERENCES `ofeel_portfolio`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;