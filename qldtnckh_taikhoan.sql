-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: qldtnckh
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoan` (
  `tentaikhoan` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `Nhom` varchar(45) NOT NULL,
  `hoten` varchar(45) DEFAULT NULL,
  `mssv` varchar(45) DEFAULT NULL,
  `khoa` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `socmnd` varchar(45) DEFAULT NULL,
  `nienkhoa` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `ngaysinh` varchar(45) DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tentaikhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('admin','admin','admin@gmail.com','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('giangvien1','123','giangvien1@gmail.com','2','Nguyen Huu Trung',NULL,'CNTT','0912345678','222333444',NULL,'Nam','Tan Binh','01/08/1984',NULL),('giangvien2','123','giangvien2@gmail.com','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('giangvien5','123','giangvien5@gmail.com','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('hoangdv','123','hoangdv.it@gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('nghiemthu1','123','nghiemthu1@gmail.com','3','Do Thi Hanh',NULL,'Kinh Te','0987654321','130456723',NULL,'Nu','Go Vap','12/12/1980',NULL),('nghiemthu2','123','nghiemthu2@gmail.com','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('nghiemthu3','123','nghiemthu3@gmail.com','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('nghiemthu5','123','nghiemthu5@gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sinhvien1','123','sinhvien1@gmail.com','1','Dinh Vu Hoang','13110062','CNTT','09861284996','215330188','2013-2017','Nam','Thu Duc','24/04/1995',NULL),('sinhvien2','123','sinhvien2@gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sinhvien3','123','sinhvien3@gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sinhvien4','123','sinhvien4@gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-20 22:26:13
