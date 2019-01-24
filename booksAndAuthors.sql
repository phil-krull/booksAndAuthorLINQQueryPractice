CREATE DATABASE  IF NOT EXISTS `EFBooksAndAuthors` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `EFBooksAndAuthors`;
-- MySQL dump 10.13  Distrib 5.6.34, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: EFBooksAndAuthors
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `authorId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (15,'JK Rowling','2019-01-23 11:42:44','2019-01-23 11:42:44'),(17,'Ernest Hemingway','2019-01-24 12:35:15','2019-01-24 12:35:15'),(18,'Mark Twain','2019-01-24 12:35:21','2019-01-24 12:35:21'),(19,'Stephen King','2019-01-24 12:35:27','2019-01-24 12:35:27'),(20,'William Shakespeare','2019-01-24 12:35:39','2019-01-24 12:35:39'),(21,'Jane Austin','2019-01-24 12:35:48','2019-01-24 12:35:48'),(22,'JRR Tolkien','2019-01-24 12:36:08','2019-01-24 12:36:08'),(23,'Edgar Allan Poe','2019-01-24 12:36:19','2019-01-24 12:36:19'),(24,'Dr Seuss','2019-01-24 12:36:41','2019-01-24 12:36:41'),(25,'Suzanne Collins','2019-01-24 12:37:07','2019-01-24 12:37:07');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `fk_books_authors_idx` (`authorId`),
  CONSTRAINT `fk_books_authors` FOREIGN KEY (`authorId`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (21,15,'2019-01-23 11:42:56','2019-01-23 11:42:56','Harry Potter and the Half-Blood Prince'),(24,25,'2019-01-24 12:37:44','2019-01-24 12:37:44','Hunger Games'),(25,25,'2019-01-24 12:37:55','2019-01-24 12:37:55','MockingJay'),(26,25,'2019-01-24 12:38:16','2019-01-24 12:38:16','Catching Fire'),(27,24,'2019-01-24 12:38:37','2019-01-24 12:38:37','Cat in the Hat'),(28,24,'2019-01-24 12:39:00','2019-01-24 12:39:00','One fish two fish red fish blue fish'),(29,24,'2019-01-24 12:39:06','2019-01-24 12:39:06','Lorax'),(30,24,'2019-01-24 12:39:26','2019-01-24 12:39:26','How the grinch stole Christmas'),(31,23,'2019-01-24 12:39:51','2019-01-24 12:39:51','The Raven'),(32,23,'2019-01-24 12:40:00','2019-01-24 12:40:00','The Black Cat'),(33,23,'2019-01-24 12:40:14','2019-01-24 12:40:14','Annabell Lee'),(34,23,'2019-01-24 12:40:27','2019-01-24 12:40:27','The Tell-Tale Heart'),(35,22,'2019-01-24 12:40:53','2019-01-24 12:40:53','The Hobbit'),(36,22,'2019-01-24 12:41:06','2019-01-24 12:41:06','The Lord of the Rings'),(37,22,'2019-01-24 12:41:28','2019-01-24 12:41:28','Unfinished Tales'),(38,22,'2019-01-24 12:41:40','2019-01-24 12:41:40','The Fellowship of the Ring'),(39,22,'2019-01-24 12:42:02','2019-01-24 12:42:02','The Two Towers'),(40,22,'2019-01-24 12:42:16','2019-01-24 12:42:16','The Return of the King'),(41,21,'2019-01-24 12:43:39','2019-01-24 12:43:39','Pride and Prejudice'),(42,21,'2019-01-24 12:43:44','2019-01-24 12:43:44','Emma'),(43,21,'2019-01-24 12:43:54','2019-01-24 12:43:54','Persuasion'),(44,21,'2019-01-24 12:44:05','2019-01-24 12:44:05','Sense and Sensibility'),(45,20,'2019-01-24 12:44:45','2019-01-24 12:44:45','Hamlet'),(46,20,'2019-01-24 12:44:54','2019-01-24 12:44:54','Macbeth'),(47,19,'2019-01-24 12:45:15','2019-01-24 12:45:15','It'),(48,19,'2019-01-24 12:45:21','2019-01-24 12:45:21','The Stand'),(49,19,'2019-01-24 12:45:29','2019-01-24 12:45:29','The Shining'),(50,19,'2019-01-24 12:45:36','2019-01-24 12:45:36','Pet Sematary'),(51,19,'2019-01-24 12:45:43','2019-01-24 12:45:43','Misery'),(52,19,'2019-01-24 12:45:51','2019-01-24 12:45:51','The Outsider'),(53,18,'2019-01-24 12:46:24','2019-01-24 12:46:24','The Adventures of Tom Sawyer'),(54,18,'2019-01-24 12:46:40','2019-01-24 12:46:40','Adventures of Hucklebery Finn'),(55,18,'2019-01-24 12:46:50','2019-01-24 12:46:50','Life on the Mississippi'),(56,17,'2019-01-24 12:47:26','2019-01-24 12:47:26','The Oldman and the Sea'),(57,17,'2019-01-24 12:47:35','2019-01-24 12:47:35','A Farewell to Arms'),(58,17,'2019-01-24 12:47:43','2019-01-24 12:47:43','The Sun also Rises'),(59,17,'2019-01-24 12:47:50','2019-01-24 12:47:50','Short Stories'),(60,15,'2019-01-24 12:48:22','2019-01-24 12:48:22','The Cuckoo\'s Calling'),(61,15,'2019-01-24 12:48:30','2019-01-24 12:48:30','Lethal White'),(62,15,'2019-01-24 12:48:47','2019-01-24 12:48:47','Harry Potter and the Sorcerer\'s Stone'),(63,15,'2019-01-24 12:49:03','2019-01-24 12:49:03','Harry Potter and the Deathly Hollows'),(64,15,'2019-01-24 12:49:25','2019-01-24 12:49:25','Harry Potter and the Prisoner of Azkaban'),(65,15,'2019-01-24 12:49:46','2019-01-24 12:49:46','Harry Potter and the Goblet of Fire'),(66,15,'2019-01-24 12:51:26','2019-01-24 12:51:26','Harry Potter and the Order of the Phoenix'),(67,15,'2019-01-24 12:51:43','2019-01-24 12:51:43','Harry Potter and the Chamber of Secrets');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `publicationId` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `publisherId` int(11) NOT NULL,
  PRIMARY KEY (`publicationId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,21,1),(2,24,1),(3,62,1),(4,63,1),(5,64,1),(6,65,1),(7,66,1),(8,67,1),(9,25,3),(10,26,5),(11,34,1),(12,42,6),(13,39,7),(14,28,2),(15,27,2),(16,28,5),(17,31,4),(18,45,6),(19,44,6),(20,47,5);
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `publisherId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`publisherId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Penguin Random House','2019-01-23 11:43:58','2019-01-23 11:43:58'),(2,'Disney Publishing Worldwide','2019-01-23 11:47:42','2019-01-23 11:47:42'),(3,'HarperCollins','2019-01-24 12:30:26','2019-01-24 12:30:26'),(4,'Simon & Schuster','2019-01-24 12:30:38','2019-01-24 12:30:38'),(5,'Hachette Book Group','2019-01-24 12:30:47','2019-01-24 12:30:47'),(6,'Macmillan','2019-01-24 12:30:55','2019-01-24 12:30:55'),(7,'Scholastic','2019-01-24 12:31:14','2019-01-24 12:31:14');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-24 14:54:24
