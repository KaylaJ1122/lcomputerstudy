-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- jjw 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jjw` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jjw`;

-- 테이블 jjw.board2 구조 내보내기
CREATE TABLE IF NOT EXISTS `board2` (
  `b_idx` int(10) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(255) DEFAULT NULL,
  `b_content` varchar(255) DEFAULT NULL,
  `b_hit` varchar(255) DEFAULT NULL,
  `b_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`b_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jjw.board2:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board2` DISABLE KEYS */;
INSERT INTO `board2` (`b_idx`, `b_title`, `b_content`, `b_hit`, `b_date`) VALUES
	(1, '가입인사', '안녕', '45', '0923'),
	(2, '자유게시판', 'ㅎㅇㅎㅇ', '63', '0921'),
	(3, '내용', '컨텐츠', '88', '0812'),
	(4, '뉴스', '코로나', '73', '0902'),
	(5, '추천', '치즈버거', '135', '0924');
/*!40000 ALTER TABLE `board2` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
