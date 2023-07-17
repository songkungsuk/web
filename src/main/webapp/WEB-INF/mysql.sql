-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        11.0.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kd 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kd`;

-- 테이블 kd.board_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_info` (
  `BI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `BI_TITLE` varchar(100) NOT NULL,
  `BI_CONTENT` text NOT NULL,
  `BI_WRITER` varchar(30) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~5 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(1, '첫번째 게시물', '제곧내', '전한녁', '2023-07-10 06:09:38', 1),
	(2, '첫번째 게시물', '제곧내', '전한녁', '2023-07-10 06:55:36', 0),
	(11, '두번째 게시물', '오늘은 비가오네요', '전한녁2', '2023-07-11 06:52:25', 0),
	(12, '오늘의 일기', '성규가 프로그래밍을 너무 잘한다', '송경석', '2023-07-13 09:00:35', 10000000),
	(13, 'BI_TITLE', 'BI_CONTENT', 'BI_WRITER', '2023-07-14 04:32:59', 1);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~9 rows (대략적) 내보내기
INSERT INTO `class_info` (`CI_NUM`, `CI_NAME`, `CI_DESC`) VALUES
	(1, 'songkungsuk', '12345'),
	(2, 'imsungggu', '54321'),
	(3, 'kyoungdong', '11112'),
	(4, 'student', '12345'),
	(12, '안녕하세요', '안녕하세요'),
	(13, 'dsa', 'dsa'),
	(14, 'dsa', 'dsa'),
	(15, 'dsa', 'dsa'),
	(16, 'dsa', 'dsaads');

-- 테이블 kd.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `UI_ID` varchar(30) NOT NULL,
  `UI_PWD` varchar(30) NOT NULL,
  `UI_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`),
  UNIQUE KEY `UI_ID` (`UI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.user_info:~6 rows (대략적) 내보내기
INSERT INTO `user_info` (`UI_NUM`, `UI_ID`, `UI_PWD`, `UI_NAME`) VALUES
	(9, 'song7692', '1234', 'songkungsug'),
	(10, 'songkungsong', '12355', 'MyData'),
	(12, 'tree', '1234', 'gruit'),
	(14, '1621021', '1621021', 'kduniv'),
	(16, 'song5000', 'soso', 'songkungsuga'),
	(17, 'dsad', 'dsa', 'dsadsa');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
