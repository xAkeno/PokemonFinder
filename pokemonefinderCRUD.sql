-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_pokemonefinder
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_pokemonefinder`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_pokemonefinder` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_pokemonefinder`;

--
-- Table structure for table `tbl_account`
--

DROP TABLE IF EXISTS `tbl_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_account`
--

LOCK TABLES `tbl_account` WRITE;
/*!40000 ALTER TABLE `tbl_account` DISABLE KEYS */;
INSERT INTO `tbl_account` VALUES (1000,'admin','admin','admin','admin','admin'),(1001,'a','a','a','a','a'),(1002,'test','test','test','test','test'),(1003,'war','war','war','war','war'),(1004,'asdas','asd','asd','asd','asd'),(1005,'weq','weq','weq','weq','weq'),(1006,'zxc','zxc','zxc','zxc','zxc'),(1007,'s','s','s','s','s'),(1008,'e','qq','e','e','e'),(1009,'x','x','x','x','x');
/*!40000 ALTER TABLE `tbl_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_api`
--

DROP TABLE IF EXISTS `tbl_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_api` (
  `pokemon_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) DEFAULT NULL,
  `ability1` varchar(30) DEFAULT NULL,
  `ability2` varchar(30) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pokemon_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `tbl_api_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `tbl_account` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5088 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_api`
--

LOCK TABLES `tbl_api` WRITE;
/*!40000 ALTER TABLE `tbl_api` DISABLE KEYS */;
INSERT INTO `tbl_api` VALUES (5000,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1000),(5001,'6','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png','charizard',1000),(5002,'6','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png','charizard',1000),(5003,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1000),(5004,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1000),(5005,'1','overgrow','chlorophyll','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png','bulbasaur',1002),(5006,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1002),(5007,'50','sand-veil','arena-trap','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png','diglett',1002),(5008,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1002),(5009,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1003),(5010,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1003),(5011,'50','sand-veil','arena-trap','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png','diglett',1003),(5012,'143','immunity','thick-fat','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png','snorlax',1003),(5013,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1002),(5014,'132','limber','imposter','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png','ditto',1002),(5015,'77','run-away','flash-fire','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png','ponyta',1002),(5016,'133','run-away','adaptability','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png','eevee',1002),(5017,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1003),(5018,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1003),(5019,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1004),(5020,'66','guts','no-guard','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png','machop',1003),(5021,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1005),(5022,'10','shield-dust','run-away','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png','caterpie',1005),(5023,'6','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png','charizard',1005),(5024,'5','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png','charmeleon',1005),(5025,'12','compound-eyes','tinted-lens','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png','butterfree',1005),(5027,'7','torrent','rain-dish','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png','squirtle',1005),(5028,'1','overgrow','chlorophyll','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png','bulbasaur',1005),(5029,'8','torrent','rain-dish','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png','wartortle',1005),(5035,'6','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png','charizard',1002),(5036,'43','chlorophyll','run-away','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png','oddish',1002),(5037,'43','chlorophyll','run-away','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png','oddish',1002),(5038,'51','sand-veil','arena-trap','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png','dugtrio',1005),(5039,'98','hyper-cutter','shell-armor','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png','krabby',1005),(5040,'66','guts','no-guard','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png','machop',1005),(5041,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1006),(5042,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1002),(5043,'119','swift-swim','water-veil','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png','seaking',1002),(5044,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1007),(5045,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1007),(5046,'119','swift-swim','water-veil','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png','seaking',1007),(5047,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5048,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1008),(5049,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1008),(5050,'119','swift-swim','water-veil','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png','seaking',1008),(5051,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1008),(5052,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5053,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1008),(5054,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5055,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1008),(5056,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1008),(5057,'1','overgrow','chlorophyll','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png','bulbasaur',1008),(5058,'150','pressure','unnerve','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png','mewtwo',1008),(5059,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5060,'150','pressure','unnerve','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png','mewtwo',1008),(5061,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5062,'150','pressure','unnerve','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png','mewtwo',1008),(5063,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5064,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5065,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5066,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5067,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5068,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5069,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5070,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1008),(5071,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1008),(5072,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5073,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5074,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5075,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5076,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1008),(5077,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1009),(5078,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1009),(5079,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1009),(5080,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1009),(5081,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1009),(5082,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1008),(5083,'46','effect-spore','dry-skin','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png','paras',1009),(5084,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1009),(5085,'74','rock-head','sturdy','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png','geodude',1009),(5086,'25','static','lightning-rod','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png','pikachu',1009),(5087,'4','blaze','solar-power','https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png','charmander',1009);
/*!40000 ALTER TABLE `tbl_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_history`
--

DROP TABLE IF EXISTS `tbl_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `pokemon_id` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `account_id` (`account_id`),
  KEY `pokemon_id` (`pokemon_id`),
  CONSTRAINT `tbl_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `tbl_account` (`account_id`),
  CONSTRAINT `tbl_history_ibfk_2` FOREIGN KEY (`pokemon_id`) REFERENCES `tbl_api` (`pokemon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10089 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_history`
--

LOCK TABLES `tbl_history` WRITE;
/*!40000 ALTER TABLE `tbl_history` DISABLE KEYS */;
INSERT INTO `tbl_history` VALUES (10001,1000,5004,'2024-06-17'),(10002,1000,5004,'2024-06-17'),(10003,1000,5004,'2024-06-22'),(10004,1000,5004,'2024-06-22'),(10005,1000,5004,'2024-06-22'),(10006,1002,5005,'2024-06-22'),(10007,1002,5006,'2024-06-22'),(10008,1002,5007,'2024-06-22'),(10009,1002,5008,'2024-06-22'),(10010,1003,5009,'2024-06-24'),(10011,1003,5010,'2024-06-24'),(10012,1003,5011,'2024-06-24'),(10013,1003,5012,'2024-06-24'),(10014,1002,5013,'2024-06-24'),(10015,1002,5014,'2024-06-24'),(10016,1002,5015,'2024-06-24'),(10017,1002,5016,'2024-06-24'),(10018,1003,5017,'2024-06-24'),(10019,1003,5018,'2024-06-24'),(10020,1004,5019,'2024-06-24'),(10021,1003,5020,'2024-06-24'),(10022,1005,5021,'2024-06-24'),(10023,1005,5022,'2024-06-24'),(10024,1005,5023,'2024-06-24'),(10025,1005,5024,'2024-06-24'),(10026,1005,5025,'2024-06-24'),(10028,1005,5027,'2024-06-24'),(10029,1005,5028,'2024-06-24'),(10030,1005,5029,'2024-06-24'),(10036,1002,5035,'2024-06-24'),(10037,1002,5036,'2024-06-24'),(10038,1002,5037,'2024-06-24'),(10039,1005,5038,'2024-06-24'),(10040,1005,5039,'2024-06-24'),(10041,1005,5040,'2024-06-24'),(10042,1006,5041,'2024-06-24'),(10043,1002,5042,'2024-06-24'),(10044,1002,5043,'2024-06-25'),(10045,1007,5044,'2024-06-25'),(10046,1007,5045,'2024-06-25'),(10047,1007,5046,'2024-06-25'),(10061,1008,5060,'2024-06-28'),(10062,1008,5061,'2024-06-28'),(10063,1008,5062,'2024-06-28'),(10064,1008,5063,'2024-06-28'),(10065,1008,5064,'2024-06-28'),(10066,1008,5065,'2024-06-28'),(10067,1008,5066,'2024-06-28'),(10068,1008,5067,'2024-06-28'),(10069,1008,5068,'2024-06-28'),(10070,1008,5069,'2024-06-28'),(10071,1008,5070,'2024-06-28'),(10072,1008,5071,'2024-06-28'),(10073,1008,5072,'2024-06-28'),(10074,1008,5073,'2024-06-28'),(10075,1008,5074,'2024-06-28'),(10076,1008,5075,'2024-06-28'),(10083,1008,5082,'2024-06-28'),(10087,1009,5086,'2024-06-28'),(10088,1009,5087,'2024-06-28');
/*!40000 ALTER TABLE `tbl_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_search`
--

DROP TABLE IF EXISTS `tbl_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_search` (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `search_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`search_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_search`
--

LOCK TABLES `tbl_search` WRITE;
/*!40000 ALTER TABLE `tbl_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_search` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-01 18:55:08
