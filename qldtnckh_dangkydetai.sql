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
-- Table structure for table `dangkydetai`
--

DROP TABLE IF EXISTS `dangkydetai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangkydetai` (
  `madetai` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(45) NOT NULL,
  `mssv` varchar(45) NOT NULL,
  `khoa` varchar(45) NOT NULL,
  `tendetai` varchar(45) NOT NULL,
  `linhvuc` varchar(45) NOT NULL,
  `thoigianbatdau` varchar(45) NOT NULL,
  `thoigianketthuc` varchar(45) NOT NULL,
  `kinhphi` varchar(45) NOT NULL,
  `ghichu` varchar(45) NOT NULL,
  `TrangThai` varchar(45) DEFAULT NULL,
  `Comment` varchar(45) DEFAULT NULL,
  `linknopbai` varchar(200) DEFAULT NULL,
  `gvphanbien` varchar(45) DEFAULT NULL,
  `thoigianphanbien` varchar(45) DEFAULT NULL,
  `phongphanbien` varchar(45) DEFAULT NULL,
  `diem` varchar(45) DEFAULT NULL,
  `giahanhuy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`madetai`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangkydetai`
--

LOCK TABLES `dangkydetai` WRITE;
/*!40000 ALTER TABLE `dangkydetai` DISABLE KEYS */;
INSERT INTO `dangkydetai` VALUES (1,'Nguyen Tran Huyen Mi','13110696','CNTT','An Ninh Mang','An Ninh','10/2016','1/2017','2000000','Day la mot du an rat quan trong!!!','CHO PHAN BIEN','Rat tot!','http://studyjsp.blogspot.com/2014/09/toturial-8-session-in-java-web.html','Th.S Nguyen Thi Thanh Van','2016-12-25','a4101','9',NULL),(2,'Nguyen Thanh An','13110112','CNTT','Phan mem quan ly nha hang','CNPM','2016-11-11','2016-1-2017','500000','Tieu Luan Chuyen Nganh','CHO PHAN BIEN','','http://sinhvienit.net','Th.S Nguyen Tran Thi Van','2016-12-24','a4201',NULL,NULL),(3,'nguyen van an','13110765','CNTT','Khoa Hoc May Tinh','May Tinh','8/2016','11/2016','3000000','Rat quan trong','DUYET','Chinh chung toi cung khong the tin duoc!','http://www.w3schools.com/html/html_links.asp',NULL,NULL,NULL,NULL,NULL),(4,'Tran Thanh Binh','11110976','Hoa Thuc Pham','Ve Sinh An TOan THuc Pham','Thuc An','3/2016','12/2016','4000','Day la du an can thiet!','DUYET','That khong the tin duoc\r\n','https://sites.google.com/site/dtdteachjwd/',NULL,NULL,NULL,NULL,'Xin Huy'),(5,'Dinh Vu Hoang','13110062','CNTT','Tim hieu ve trojan va thuc nghiem','Mang May Tinh','12/2016','4/2017','500000','Khong co','DUYET','De tai rat huu dung de phat trien hÆ¡n nua',NULL,NULL,NULL,NULL,NULL,'Xin Gia Han'),(6,'Le anh duong','13110026','CNTT','Tim hieu virus','Mang May Tinh','2016-12-06','2016-12-27','2000000','Khong co ghi chu','DUYET',NULL,NULL,NULL,NULL,NULL,NULL,'Xin Gia Han'),(9,'Tran Van Nhat','13110191','CNTT','Tim hieu ve Linux','Mang May Tinh','2016-11-28','2017-01-13','500000','Quan Trong ','DUYET',NULL,'google.com',NULL,NULL,NULL,NULL,NULL),(10,'Ha Hai Duy','13110022','CNTT','Dieu khien LED ma tran','Mang May Tinh','2016-11-30','2017-01-20','1000000',' Tieu Luan Chuyen Nganh','HUY',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'TrÆ°Æ¡ng Thanh Tuan','13110126','CNTT','Xay dung he thong den chieu sang thong minh','He Thong Nhung','2016-12-07','2017-02-08','1500000',' Do An Tot Nghiep','CHO DUYET',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Tran Ngoc X','13110019','CNTT','Tim hieu kit ARM','He Thong Nhung','2016-12-09','2017-01-28','1500000',' Tieu luan chuyen nganh','CHO PHAN BIEN','That khong the tin duoc','https://drive.google.com/drive/u/0/my-drive','Th.S Dang Thi Kim Giao','2016-12-25','a5302','10',NULL),(13,'nguyen van b','13111111','CNTT','Quan ly website','CNPM','2016-12-08','2017-01-08','2000000',' Quan trong','DUYET',NULL,NULL,NULL,NULL,NULL,NULL,'Xin Gia Han'),(14,'hello','12121','CNTT','Quan Ly Ung Dung Ban Hang','CNPM','2016-12-23','2016-12-25','100000',' OK','CHO PHAN BIEN','rat tot','https://drive.google.com/drive/u/0/folders/0B5iJCWItkvusZWxSaUNrUUZpZU0','Th.S Nguyen Thi Thanh Van','2016-12-25','a4202','9',NULL);
/*!40000 ALTER TABLE `dangkydetai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-20 22:26:12
