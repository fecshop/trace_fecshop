-- phpMyAdmin SQL Dump
-- version 3.3.10
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 06 月 22 日 11:26
-- 服务器版本: 5.6.14
-- PHP 版本: 5.4.34

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `fec-go`
--

-- --------------------------------------------------------

--
-- 表的结构 `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertise_id` varchar(50) DEFAULT NULL COMMENT '广告id',
  `fec_source` varchar(50) DEFAULT NULL COMMENT '渠道',
  `fec_medium` varchar(50) DEFAULT NULL COMMENT '子渠道',
  `fec_campaign` varchar(50) DEFAULT NULL COMMENT '活动',
  `fec_content` varchar(50) DEFAULT NULL COMMENT '员工',
  `fec_design` varchar(50) DEFAULT NULL COMMENT '美工',
  `url` varchar(255) DEFAULT NULL COMMENT '原始的推广url',
  `advertise_cost` decimal(12,2) DEFAULT NULL COMMENT '广告花费',
  `remark` varchar(255) DEFAULT NULL COMMENT '广告备注',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建user id',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  `advertise_begin_date` int(20) DEFAULT NULL COMMENT '广告预计开始时间',
  `market_group` int(20) DEFAULT NULL COMMENT '创建人所属的广告小组',
  `own_id` int(20) DEFAULT NULL COMMENT '拥有者，也就是common admin id',
  `advertise_url` varchar(500) DEFAULT NULL COMMENT '按照各个参数生成后的广告url',
  PRIMARY KEY (`id`),
  KEY `fec_source` (`fec_source`,`own_id`),
  KEY `fec_medium` (`fec_medium`,`own_id`),
  KEY `advertise_id` (`advertise_id`),
  KEY `advertise_id_2` (`advertise_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- 转存表中的数据 `advertise`
--

INSERT INTO `advertise` (`id`, `advertise_id`, `fec_source`, `fec_medium`, `fec_campaign`, `fec_content`, `fec_design`, `url`, `advertise_cost`, `remark`, `created_customer_id`, `created_at`, `advertise_begin_date`, `market_group`, `own_id`, `advertise_url`) VALUES
(1, '10000001', 'Facebook', 'Adwords', '', '93', '', 'http://fecshop.appfront.fancyecommerce.com/men', 334.44, '', 93, 1526021974, 1526021974, 0, 93, 'http://fecshop.appfront.fancyecommerce.com/men?age=100'),
(2, '10000002', 'Facebook', 'Adwords', '', '93', '', 'http://fecshop.appfront.fancyecommerce.com/men', 334.44, '', 93, 1526022328, 1526022328, 0, 93, 'http://fecshop.appfront.fancyecommerce.com/men?age=100'),
(3, '10000003', 'Facebook', 'Adwords', '', '93', '', 'http://fecshop.appfront.fancyecommerce.com/men', 334.44, '', 93, 1526022376, 1526022376, 0, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_content=93&fec_medium=Adwords&fec_source=Facebook&fid=10000003'),
(4, '10000004', 'Facebook', 'Adwords', 'xxxx', '93', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 334.44, 'remakr', 93, 1526022410, 1526022410, 0, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxxx&fec_content=93&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=10000004'),
(5, '100000005', 'Facebook', 'Adwords', 'xxxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men?p=3', 43.00, 'remakrkkk', 94, 1526026608, 1526026608, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000005&p=3'),
(6, '100000006', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 12.00, 'remark_xxx', 94, 1526212966, 1526212966, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000006'),
(7, '100000007', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, 'fffff', 94, 1526214863, 1526214863, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000007'),
(8, '100000008', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, 'fffff', 94, 1526214888, 1526214888, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000008'),
(9, '100000009', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526214898, 1526214898, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000009'),
(10, '100000010', 'Facebook', 'Share', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526215335, 1526215335, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000010'),
(11, '100000011', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526215338, 1526215338, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000011'),
(12, '100000012', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526216369, 1526216369, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000012'),
(13, '100000013', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526216378, 1526216378, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000013'),
(14, '100000014', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526216478, 1526216478, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000014'),
(15, '100000015', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '', 94, 1526216504, 1526216504, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000015'),
(16, '100000016', 'Facebook', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '这是我的第一个广告', 94, 1526216561, 1526216561, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000016'),
(17, '100000017', 'Facebook', 'Adwords', 'zhouqing6', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 22.00, '这是我的第一个广告', 94, 1526216584, 1526216584, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=zhouqing6&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=100000017'),
(18, '100000018', 'Google', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com', 33.00, 'xxx', 94, 1526288480, 1526288480, 2, 93, 'http://fecshop.appfront.fancyecommerce.com?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Google&fid=100000018'),
(19, '100000019', 'Google', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/wedding', 55.00, '66', 94, 1526288632, 1526288632, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/wedding?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Google&fid=100000019'),
(20, '100000020', 'Google', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/wedding', 55.00, '66', 94, 1526288807, 1526288807, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/wedding?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Google&fid=100000020'),
(21, '100000021', 'Google', 'Adwords', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/wedding', 55.00, '66', 94, 1526288809, 1526288809, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/wedding?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Adwords&fec_source=Google&fid=100000021'),
(22, '100000022', 'Facebook', 'Click', '', '94', '', 'http://fecshop.appfront.fancyecommerce.com/men', 33.00, '', 94, 1526288941, 1526288941, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_content=94&fec_medium=Click&fec_source=Facebook&fid=100000022'),
(23, '100000023', 'Facebook', 'Click', '', '94', '', 'http://fecshop.appfront.fancyecommerce.com/men', 33.00, '', 94, 1526288946, 1526288946, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_content=94&fec_medium=Click&fec_source=Facebook&fid=100000023'),
(24, '100000024', 'Facebook', 'Click', '', '94', '', 'http://fecshop.appfront.fancyecommerce.com/men', 33.00, '33', 94, 1526288950, 1526288950, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_content=94&fec_medium=Click&fec_source=Facebook&fid=100000024'),
(25, '100000025', 'Facebook', 'Click', '44', '94', '', 'http://fecshop.appfront.fancyecommerce.com/men', 33.00, '33', 94, 1526288952, 1526288952, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=44&fec_content=94&fec_medium=Click&fec_source=Facebook&fid=100000025'),
(26, '100000026', 'Facebook', 'Click', '44', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 33.00, '33', 94, 1526288955, 1526288955, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=44&fec_content=94&fec_design=96&fec_medium=Click&fec_source=Facebook&fid=100000026'),
(27, '100000027', 'Facebook', 'Click', '44', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 33.00, '33', 94, 1526288967, 1526288967, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=44&fec_content=94&fec_design=96&fec_medium=Click&fec_source=Facebook&fid=100000027'),
(28, '100000028', 'Facebook', 'Share', '', '94', '', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, '', 94, 1526289451, 1526289451, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_content=94&fec_medium=Share&fec_source=Facebook&fid=100000028'),
(29, '100000029', 'Facebook', 'Share', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/checkout/cart', 1.00, '2', 94, 1526434289, 1526434289, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/checkout/cart?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Share&fec_source=Facebook&fid=100000029'),
(30, '100000030', 'Facebook', 'Share', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/checkout/cart', 1.00, '2', 94, 1526434295, 1526434295, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/checkout/cart?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Share&fec_source=Facebook&fid=100000030'),
(31, '100000031', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526439403, 1526439403, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000031'),
(32, '100000032', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526439403, 1526439403, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000032'),
(33, '100000033', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526439403, 1526439403, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000033'),
(34, '100000034', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526439459, 1526439459, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000034'),
(35, '100000035', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526439459, 1526439459, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000035'),
(36, '100000036', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526439459, 1526439459, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000036'),
(37, '100000037', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526439464, 1526439464, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000037'),
(38, '100000038', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526439464, 1526439464, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000038'),
(39, '100000039', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526439464, 1526439464, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000039'),
(40, '100000040', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526439470, 1526439470, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000040'),
(41, '100000041', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526439470, 1526439470, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000041'),
(42, '100000042', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526439470, 1526439470, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000042'),
(43, '100000043', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526440412, 1526440412, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000043'),
(44, '100000044', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526440412, 1526440412, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000044'),
(45, '100000045', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526440412, 1526440412, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000045'),
(46, '100000046', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526441296, 1526441296, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000046'),
(47, '100000047', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526441296, 1526441296, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000047'),
(48, '100000048', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526441296, 1526441296, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000048'),
(49, '100000049', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526442201, 1526442201, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000049'),
(50, '100000050', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526442201, 1526442201, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000050'),
(51, '100000051', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526442201, 1526442201, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000051'),
(52, '100000052', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526442204, 1526442204, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000052'),
(53, '100000053', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526442204, 1526442204, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000053'),
(54, '100000054', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526442204, 1526442204, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000054'),
(55, '100000055', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526442210, 1526442210, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000055'),
(56, '100000056', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526442210, 1526442210, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000056'),
(57, '100000057', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526442210, 1526442210, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000057'),
(58, '100000058', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526442218, 1526442218, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000058'),
(59, '100000059', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526442218, 1526442218, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000059'),
(60, '100000060', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526442218, 1526442218, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000060'),
(61, '100000061', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526444841, 1526444841, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000061'),
(62, '100000062', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526444842, 1526444842, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000062'),
(63, '100000063', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526444842, 1526444842, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000063'),
(64, '100000064', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526445068, 1526445068, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000064'),
(65, '100000065', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526445068, 1526445068, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000065'),
(66, '100000066', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526445068, 1526445068, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000066'),
(67, '100000067', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526452641, 1526452641, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000067'),
(68, '100000067', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526452641, 1526452641, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000067'),
(69, '100000067', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526452641, 1526452641, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000067'),
(70, '100000070', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526452662, 1526452662, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=100000070'),
(71, '100000070', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526452662, 1526452662, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=100000070'),
(72, '100000070', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526452662, 1526452662, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=100000070'),
(73, '', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526453918, 1526453918, 2, 93, ''),
(74, '', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526453921, 1526453921, 2, 93, ''),
(75, '', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526454041, 1526454041, 2, 93, ''),
(76, '70d98437-a029-44ef-84ca-38716ca95b99', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526454104, 1526454104, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=70d98437-a029-44ef-84ca-38716ca95b99'),
(77, '70d98437-a029-44ef-84ca-38716ca95b99', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526454104, 1526454104, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=70d98437-a029-44ef-84ca-38716ca95b99'),
(78, '70d98437-a029-44ef-84ca-38716ca95b99', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526454104, 1526454104, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=70d98437-a029-44ef-84ca-38716ca95b99'),
(79, '4c554d86-27d2-4975-990f-42250eb45a1c', 'SEO', 'Google', 'XXX', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/', 0.00, 'seo广告备注', 94, 1526454467, 1526454467, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/?fec_campaign=XXX&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEO&fid=4c554d86-27d2-4975-990f-42250eb45a1c'),
(80, '823ae6da-52cb-4460-9768-2f06eb78b49e', 'SEM', 'Google', 'YYYY', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/men', 0.20, '2017-01-20广告', 94, 1526454467, 1526454467, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=YYYY&fec_content=94&fec_design=2867&fec_medium=Google&fec_source=SEM&fid=823ae6da-52cb-4460-9768-2f06eb78b49e'),
(81, '26d8bc1f-01c2-42b3-92cc-040ccd476413', 'KOL-Blog', 'Sergey', 'test', '94', '2867', 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122', 0.10, '红人测试广告', 94, 1526454467, 1526454467, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/raglan-sleeves-letter-printed-crew-neck-sweatshirt-53386451-77774122?fec_campaign=test&fec_content=94&fec_design=2867&fec_medium=Sergey&fec_source=KOL-Blog&fid=26d8bc1f-01c2-42b3-92cc-040ccd476413'),
(82, 'b0e06def-ff88-40dc-8b13-4a07893f3747', 'Facebook', 'Adwords', '33', '93', '96', 'https://fecshop.appfront.fancyecommerce.com/', 44.00, '55', 93, 1526454821, 1526454821, 0, 93, 'https://fecshop.appfront.fancyecommerce.com/?fec_campaign=33&fec_content=93&fec_design=96&fec_medium=Adwords&fec_source=Facebook&fid=b0e06def-ff88-40dc-8b13-4a07893f3747'),
(83, '7a77a6ba-2d90-4ad5-bf75-fdf920de41f7', 'Facebook', 'Share', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/men', 32.00, 'remarkkk', 94, 1526531241, 1526531241, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/men?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=Share&fec_source=Facebook&fid=7a77a6ba-2d90-4ad5-bf75-fdf920de41f7'),
(84, 'ac062761-5f43-46a7-9363-de1d53e1fc91', 'EDM', 'click', 'xxx', '94', '96', 'http://fecshop.appfront.fancyecommerce.com/bags-accessories', 0.00, 'remark3', 94, 1527060065, 1527060065, 2, 93, 'http://fecshop.appfront.fancyecommerce.com/bags-accessories?fec_campaign=xxx&fec_content=94&fec_design=96&fec_medium=click&fec_source=EDM&fid=ac062761-5f43-46a7-9363-de1d53e1fc91');

-- --------------------------------------------------------

--
-- 表的结构 `base_channel_info`
--

CREATE TABLE IF NOT EXISTS `base_channel_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT '拥有者id',
  `channel` varchar(150) DEFAULT NULL COMMENT '渠道名称',
  `channel_child` varchar(150) DEFAULT NULL COMMENT '子渠道名称',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT '更新时间',
  `status` int(5) DEFAULT NULL COMMENT '状态，1代表激活，2代表关闭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `own_id` (`own_id`,`channel`,`channel_child`),
  KEY `owner_id` (`own_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `base_channel_info`
--

INSERT INTO `base_channel_info` (`id`, `own_id`, `channel`, `channel_child`, `created_customer_id`, `created_at`, `updated_at`, `status`) VALUES
(3, 93, 'Facebook', 'PPC', 15, 1522296453, 1525925761, NULL),
(5, 93, 'Google', 'Adwords', 15, 1522296486, 1522296486, NULL),
(6, 93, 'Facebook', 'Adwords', 93, 1525924954, 1525924954, NULL),
(7, 93, 'Facebook', 'Share', 93, 1525924970, 1525924970, NULL),
(10, 93, 'Facebook', 'Click', 93, 1525925751, 1525925751, NULL),
(11, 93, 'EDM', 'click', 93, 1527060027, 1527060027, NULL),
(12, 102, '111', '222', 102, 1529633052, 1529633052, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `base_market_group`
--

CREATE TABLE IF NOT EXISTS `base_market_group` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `created_at` int(20) DEFAULT NULL,
  `updated_at` int(20) DEFAULT NULL,
  `created_customer_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `base_market_group`
--

INSERT INTO `base_market_group` (`id`, `own_id`, `name`, `created_at`, `updated_at`, `created_customer_id`) VALUES
(1, 93, 'SEM小组', 1519978844, 1522211577, 93),
(2, 93, 'GOOGLE adwords小组', 1519978859, 1519978859, 93),
(3, 93, 'Facebook', 1522217184, 1522217942, 15);

-- --------------------------------------------------------

--
-- 表的结构 `base_website_info`
--

CREATE TABLE IF NOT EXISTS `base_website_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT '网站拥有者id',
  `site_name` varchar(150) DEFAULT NULL COMMENT '网站名称',
  `domain` varchar(150) DEFAULT NULL COMMENT '网站域名',
  `trace_js_url` varchar(255) DEFAULT NULL,
  `trace_api_url` varchar(255) DEFAULT NULL COMMENT 'trace api url，用于服务端通过api发送给trace系统数据',
  `site_uid` varchar(150) DEFAULT NULL COMMENT '网站的唯一标示，创建后不可改变',
  `access_token` varchar(255) DEFAULT NULL COMMENT '用户的token，用于通信',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `status` int(5) DEFAULT NULL COMMENT '状态，1代表激活，2代表关闭',
  `created_at` int(20) DEFAULT NULL,
  `updated_at` int(20) DEFAULT NULL,
  `payment_end_time` int(20) DEFAULT '0' COMMENT '付费用户的到期时间',
  `website_day_max_count` int(20) DEFAULT '500' COMMENT '每个站点单日接收的数据的最大数',
  `sku_image_api_url` varchar(255) DEFAULT NULL COMMENT 'sku产品，获取图片的url，譬如：http://fecshop.appfront.fancyecommerce.com/catalog/product/image',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_uid` (`site_uid`),
  UNIQUE KEY `domain` (`domain`),
  UNIQUE KEY `site_name` (`site_name`),
  KEY `owner_id` (`own_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `base_website_info`
--

INSERT INTO `base_website_info` (`id`, `own_id`, `site_name`, `domain`, `trace_js_url`, `trace_api_url`, `site_uid`, `access_token`, `created_customer_id`, `status`, `created_at`, `updated_at`, `payment_end_time`, `website_day_max_count`, `sku_image_api_url`) VALUES
(10, 102, 'fancyecommerce', 'fecshop.appfront.fancyecommerce.com', 'trace.fecshop.com/fec_trace.js', '120.24.37.249:3000/fec/trace/api', '9b17f5b4-b96f-46fd-abe6-a579837ccdd9', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ3ZWJzaXRlX3VpZCI6IjliMTdmNWI0LWI5NmYtNDZmZC1hYmU2LWE1Nzk4MzdjY2RkOSJ9.-HsUq-qKcn2dhvGoxSYHVqMxNTH0cBcLsUl-R_utaCo', 15, 1, 1523248429, 1529632957, 1546272000, 2000, 'fecshop.appfront.fancyecommerce.com/catalog/product/image'),
(12, 102, 'onfancy', 'www.onfancy.com', 'trace.fecshop.com/fec_trace.js', '120.24.37.249:3000/fec/trace/api', 'e5eee75e-0562-43a8-be2f-43fe76634cdf', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ3ZWJzaXRlX3VpZCI6ImU1ZWVlNzVlLTA1NjItNDNhOC1iZTJmLTQzZmU3NjYzNGNkZiJ9.TyRcR_LoHgjRVDuEfy3osBB6Csoo0NBS3fRUXz1dbm0', 15, 1, 1523784780, 1529633021, 1524758400, 3333, 'fecshop.appfront.fancyecommerce.com/catalog/product/image');

-- --------------------------------------------------------

--
-- 表的结构 `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `type` int(5) DEFAULT NULL COMMENT '账户的类型，1为super admin，2为common admin，3为common user',
  `parent_id` int(5) DEFAULT NULL COMMENT '子账户对应的主账号的id，只有type=3的用户才需要填写这个值',
  `password` varchar(100) DEFAULT NULL,
  `created_at` int(30) DEFAULT NULL,
  `updated_at` int(30) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` int(5) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `access_token` varchar(200) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `remark` text,
  `birth_date` int(20) DEFAULT NULL COMMENT '出生年月',
  `market_group_id` int(20) DEFAULT NULL COMMENT '营销小组id',
  `job_type` int(20) DEFAULT NULL COMMENT '员工类别',
  `payment_end_time` int(20) DEFAULT '0' COMMENT '付费用户的到期时间',
  `website_count` int(20) DEFAULT '0' COMMENT '用户站点的最大数',
  `website_day_max_count` int(20) DEFAULT '0' COMMENT '每个站点单日接收的数据的最大数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- 转存表中的数据 `customer`
--

INSERT INTO `customer` (`id`, `username`, `type`, `parent_id`, `password`, `created_at`, `updated_at`, `email`, `name`, `sex`, `telephone`, `access_token`, `status`, `age`, `remark`, `birth_date`, `market_group_id`, `job_type`, `payment_end_time`, `website_count`, `website_day_max_count`) VALUES
(15, 'admin', 1, NULL, '0192023a7bbd73250516f069df18b500', 1519978859, 1521334376, 'zqy234@126.com', 'Terry', 2, '1855343432', NULL, 1, 32, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\nFecshop 创始人\n</body><br /></html>', 534096000, NULL, NULL, 0, 0, 0),
(87, 'rosegal', 2, NULL, '17df9fb3e23199a5c60a438a9190f5df', 1521329333, 1521868379, '2358269014@qq.com', '编辑人', 1, '1545454545', NULL, 1, 18, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\n小表年纪\n</body><br /></html>', 946915200, NULL, NULL, 2099232000, 5, 4),
(89, 'editor', 2, NULL, '96e79218965eb72c92a549dd5a330112', 1521641970, 1521641970, '11@11.com', '111', 1, '1111', NULL, 1, 11, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n111\n</body>\n</html>', 1522080000, NULL, NULL, 0, 0, 0),
(93, 'fecshop', 2, 0, '0192023a7bbd73250516f069df18b500', 1521642218, 1523862732, '22@11.com', '222', 1, '222', NULL, 1, 22, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\n3333\n</body><br /></html>', 1521993600, NULL, NULL, 1607702400, 4, 100),
(94, 'fecshop_1', 3, 93, '0192023a7bbd73250516f069df18b500', 1521865998, 1526024583, '11@22.com', '周大生', 1, '11', NULL, 1, 111, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\n1111\n</body><br /></html>', 1522080000, 2, 1, 0, 0, 0),
(96, 'fecshop_2', 3, 93, '96e79218965eb72c92a549dd5a330112', 1521866057, 1522228291, '11@3232.com', '周大福', 1, '', NULL, 1, 222, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\n\n</body><br /></html>', 1521734400, NULL, 2, 0, 0, 0),
(98, '999', 2, 0, '', 1521868442, 1521874247, '32@232.com', '4324', 1, '32432', NULL, 1, 34324, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\n\n</body><br /></html>', 1522080000, NULL, NULL, 0, 0, 0),
(101, 'Fecshop_3', 3, 93, '96e79218965eb72c92a549dd5a330112', 1522296549, 1522296549, '212@22.com', '32132', 1, '32312', NULL, 1, 22, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n212\n</body>\n</html>', 1521993600, 1, 1, 0, 0, 0),
(102, 'terry', 2, 0, '96e79218965eb72c92a549dd5a330112', 1529632263, 1529632263, '111@111.com', '323232', 1, '3232', NULL, 1, 0, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\n\n</body><br /></html>', 1529510400, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `customer_role`
--

CREATE TABLE IF NOT EXISTS `customer_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) NOT NULL COMMENT '拥有者id',
  `customer_id` int(20) NOT NULL COMMENT '用户id',
  `role_id` int(20) NOT NULL COMMENT '权限id',
  `created_customer_id` int(20) NOT NULL COMMENT '创建人id',
  `created_at` int(20) NOT NULL COMMENT '创建时间',
  `updated_at` int(20) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `own_id` (`own_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `customer_role`
--

INSERT INTO `customer_role` (`id`, `own_id`, `customer_id`, `role_id`, `created_customer_id`, `created_at`, `updated_at`) VALUES
(16, 93, 94, 6, 93, 1522076713, 1522076713),
(17, 93, 94, 7, 93, 1522076713, 1522076713),
(18, 93, 96, 7, 93, 1528097385, 1528097385),
(19, 93, 101, 7, 93, 1528097389, 1528097389);

-- --------------------------------------------------------

--
-- 表的结构 `customer_website`
--

CREATE TABLE IF NOT EXISTS `customer_website` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `website_id` varchar(100) NOT NULL,
  `created_customer_id` int(20) NOT NULL,
  `created_at` int(20) NOT NULL,
  `updated_at` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `customer_website`
--


-- --------------------------------------------------------

--
-- 表的结构 `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT '资源名称',
  `url_key` varchar(255) DEFAULT NULL COMMENT '资源url路径',
  `request_method` int(5) DEFAULT NULL COMMENT '资源请求方式',
  `group_id` varchar(150) DEFAULT NULL COMMENT '资源分组',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- 转存表中的数据 `resource`
--

INSERT INTO `resource` (`id`, `name`, `url_key`, `request_method`, `group_id`, `created_customer_id`, `created_at`, `updated_at`) VALUES
(9, '更新账户密码', '/v1/customer/updatepassword', 3, '5', 15, 1521856759, 1522048599),
(10, '子账户列表', '/v1/customer/child/list', 1, '6', 15, 1521857602, 1522048605),
(11, '账户列表', '/v1/customer/list', 1, '5', 93, 1522048890, 1522049156),
(12, '初始化', '/v1/whole/advertise/init', 1, '7', 15, 1526026434, 1526026434),
(13, '生成广告链接', '/v1/whole/advertise/generateurl', 1, '7', 15, 1526026454, 1526026454),
(14, '批量生成广告', '/v1/whole/advertise/generatemutiladvertise', 2, '8', 15, 1526439127, 1526439357),
(15, '广告列表', '/v1/whole/advertise/list', 1, '10', 15, 1526439156, 1526439361),
(16, '生成多链接广告', '/v1/whole/advertise/generatemutillinkadvertise', 2, '9', 15, 1526452569, 1526452569),
(17, '网站列表', '/v1/common/website/list', 1, '11', 15, 1528084484, 1528084484),
(18, '增加网站', '/v1/common/website/addone', 2, '11', 15, 1528084507, 1528084507),
(19, '网站更新', '/v1/common/website/updateone', 3, '11', 15, 1528084538, 1528084538),
(20, '网站删除', '/v1/common/website/deleteone', 4, '11', 15, 1528084565, 1528084608),
(21, '网站批量删除', '/v1/common/website/deletebatch', 4, '11', 15, 1528084594, 1528084594),
(22, '渠道列表', '/v1/common/channel/list', 1, '12', 15, 1528084692, 1528084692),
(23, '渠道新增', '/v1/common/channel/addone', 2, '12', 15, 1528084725, 1528084725),
(24, '渠道更新', '/v1/common/channel/updateone', 3, '12', 15, 1528084770, 1528084770),
(25, '渠道删除', '/v1/common/channel/deleteone', 4, '12', 15, 1528084798, 1528084798),
(26, '渠道批量删除', '/v1/common/channel/deletebatch', 4, '12', 15, 1528084828, 1528084828),
(27, '小组列表', '/v1/common/marketgroup/list', 1, '13', 15, 1528084886, 1528084886),
(28, '小组新增', '/v1/common/marketgroup/addone', 2, '13', 15, 1528084930, 1528084930),
(29, '小组更新', '/v1/common/marketgroup/updateone', 3, '13', 15, 1528084969, 1528084969),
(30, '小组删除', '/v1/common/marketgroup/deleteone', 4, '13', 15, 1528084998, 1528084998),
(31, '小组批量删除', '/v1/common/marketgroup/deletebatch', 4, '13', 15, 1528085022, 1528085022),
(32, '员工列表', '/v1/customer/child/list', 1, '14', 15, 1528085088, 1528085088),
(33, '员工新增', '/v1/customer/child/addone', 2, '14', 15, 1528085111, 1528085111),
(34, '员工更新', '/v1/customer/child/updateone', 3, '14', 15, 1528085626, 1528085626),
(35, '员工删除', '/v1/customer/child/deleteone', 4, '14', 15, 1528085645, 1528085645),
(36, '员工批量删除', '/v1/customer/child/deletebatch', 4, '14', 15, 1528085666, 1528085666),
(37, '员工权限获取', '/v1/customer/child/role/allandselected', 1, '14', 15, 1528085774, 1528085774),
(38, '员工权限更新', '/v1/customer/child/role/updateone', 3, '14', 15, 1528085799, 1528085799),
(39, '站点列表', '/v1/whole/site/list', 1, '15', 15, 1528093410, 1528093410),
(40, '站点趋势', '/whole/site/fetchtrendinfo', 1, '15', 15, 1528093434, 1528093434),
(41, 'App入口列表', '/v1/whole/app/list', 1, '16', 15, 1528093483, 1528093483),
(42, 'App入口趋势', '/v1/whole/app/fetchtrendinfo', 1, '16', 15, 1528093507, 1528093507),
(43, '来源列表', '/v1/whole/refer/list', 1, '17', 15, 1528093542, 1528093542),
(44, '来源趋势', '/v1/whole/refer/fetchtrendinfo', 1, '17', 15, 1528093574, 1528093574),
(45, 'Sku列表', '/v1/whole/sku/list', 1, '18', 15, 1528093614, 1528093614),
(46, 'Sku趋势', '/v1/whole/sku/fetchtrendinfo', 1, '18', 15, 1528093636, 1528093636),
(47, 'Sku Refer 列表', '/v1/whole/skurefer/list', 1, '19', 15, 1528093676, 1528093676),
(48, 'Sku Refer 趋势', '/v1/whole/skurefer/fetchtrendinfo', 1, '19', 15, 1528093705, 1528093705),
(49, '搜索列表', '/v1/whole/search/list', 1, '20', 15, 1528093759, 1528093759),
(50, '搜索趋势', '/v1/whole/search/fetchtrendinfo', 1, '20', 15, 1528093777, 1528093777),
(51, '搜索语言列表', '/v1/whole/searchlang/list', 1, '21', 15, 1528093827, 1528093827),
(52, '搜索语言趋势', '/v1/whole/searchlang/fetchtrendinfo', 1, '21', 15, 1528093847, 1528093847),
(53, '着陆URL列表', '/v1/whole/firsturl/list', 1, '22', 15, 1528093877, 1528093877),
(54, '着陆url趋势', '/v1/whole/firsturl/fetchtrendinfo', 1, '22', 15, 1528093910, 1528093910),
(55, 'URL列表', '/v1/whole/url/list', 1, '23', 15, 1528093940, 1528093940),
(56, 'URL趋势', '/v1/whole/url/fetchtrendinfo', 1, '23', 15, 1528093962, 1528093977),
(57, '分类列表', '/v1/whole/category/list', 1, '24', 15, 1528094098, 1528094098),
(58, '分类趋势', '/v1/whole/category/fetchtrendinfo', 1, '24', 15, 1528094142, 1528094142),
(59, '设备列表', '/v1/whole/devide/list', 1, '25', 15, 1528094169, 1528094169),
(60, '设备趋势', '/v1/whole/devide/fetchtrendinfo', 1, '25', 15, 1528094205, 1528094205),
(61, '国家列表', '/v1/whole/country/list', 1, '26', 15, 1528094233, 1528094233),
(62, '国家趋势', '/v1/whole/country/fetchtrendinfo', 1, '26', 15, 1528094264, 1528094264),
(63, '浏览器列表', '/v1/whole/browser/list', 1, '27', 15, 1528094297, 1528094297),
(64, '浏览器趋势', '/whole/browser/fetchtrendinfo', 1, '27', 15, 1528094328, 1528094328),
(65, '广告列表', '/v1/advertise/fid/list', 1, '28', 15, 1528094359, 1528094359),
(66, '广告趋势', '/v1/advertise/fid/fetchtrendinfo', 1, '28', 15, 1528094392, 1528094392),
(67, '广告员列表', '/v1/advertise/content/list', 1, '29', 15, 1528094417, 1528094417),
(68, '广告员趋势', '/advertise/content/fetchtrendinfo', 1, '29', 15, 1528094438, 1528094438),
(69, '广告小组列表', '/v1/advertise/marketgroup/list', 1, '30', 15, 1528096169, 1528096169),
(70, '广告小组趋势', '/v1/advertise/marketgroup/fetchtrendinfo', 1, '30', 15, 1528096195, 1528096195),
(71, '广告美工列表', '/v1/advertise/design/list', 1, '31', 15, 1528096231, 1528096231),
(72, '广告美工趋势', '/advertise/design/fetchtrendinfo', 1, '31', 15, 1528096254, 1528096254),
(73, '广告活动列表', '/v1/advertise/campaign/list', 1, '32', 15, 1528096290, 1528096290),
(74, '广告活动趋势', '/v1/advertise/campaign/fetchtrendinfo', 1, '32', 15, 1528096317, 1528096317),
(75, '广告子渠道列表', '/v1/advertise/medium/list', 1, '33', 15, 1528096350, 1528096350),
(76, '广告子渠道趋势', '/v1/advertise/medium/fetchtrendinfo', 1, '33', 15, 1528096375, 1528096400),
(77, '广告渠道列表', '/v1/advertise/source/list', 1, '34', 15, 1528096432, 1528096469),
(78, '广告渠道趋势', '/v1/advertise/source/fetchtrendinfo', 1, '34', 15, 1528096457, 1528096457),
(79, 'EDM列表', '/v1/advertise/edm/list', 1, '35', 15, 1528096499, 1528096499),
(80, 'EDM趋势', '/v1/advertise/edm/fetchtrendinfo', 1, '35', 15, 1528096521, 1528096521),
(81, '用户数据列表', '/v1/customer/uuid/list', 1, '36', 15, 1528096570, 1528096570),
(82, '用户数据趋势', '/v1/customer/uuid/fetchtrendinfo', 1, '36', 15, 1528100043, 1528100043),
(83, '用户数据 - 详细数据', '/v1/customer/uuid/one', 1, '36', 15, 1528100077, 1528100077);

-- --------------------------------------------------------

--
-- 表的结构 `resource_group`
--

CREATE TABLE IF NOT EXISTS `resource_group` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT '资源分组名称',
  `created_at` int(20) DEFAULT NULL COMMENT '资源组创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT '资源组更新时间',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '资源组创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `resource_group`
--

INSERT INTO `resource_group` (`id`, `name`, `created_at`, `updated_at`, `created_customer_id`) VALUES
(5, '控制面板 - 我的账户', 1521856717, 1521856717, 15),
(6, '控制面板 - 子账户管理', 1521857443, 1521857443, 15),
(7, '广告管理 - 生成广告', 1526026387, 1526026398, 15),
(8, '广告管理 - 批量生成广告', 1526439049, 1526439049, 15),
(9, '广告管理 - 多链接广告', 1526439063, 1526439063, 15),
(10, '广告管理 - 生成广告查看', 1526439077, 1526439077, 15),
(11, '基础信息 - 网站管理', 1528083912, 1528083912, 15),
(12, '基础信息 - 渠道管理', 1528083922, 1528083922, 15),
(13, '基础信息 - 营销小组', 1528083933, 1528083933, 15),
(14, '基础信息 - 员工管理', 1528083942, 1528083942, 15),
(15, '全部流量统计 - 站点', 1528085910, 1528085910, 15),
(16, '全部流量统计 - App入口', 1528085918, 1528085918, 15),
(17, '全部流量统计 - 来源', 1528085923, 1528085923, 15),
(18, '全部流量统计 - Sku', 1528085931, 1528085931, 15),
(19, '全部流量统计 - SkuRefer', 1528085940, 1528085940, 15),
(20, '全部流量统计 - 搜索', 1528085946, 1528085946, 15),
(21, '全部流量统计 - 搜索语言', 1528085952, 1528085952, 15),
(22, '全部流量统计 - 着陆URL', 1528085959, 1528085959, 15),
(23, '全部流量统计 - Url', 1528085964, 1528085964, 15),
(24, '全部流量统计 - 分类', 1528085969, 1528085969, 15),
(25, '全部流量统计 - 设备', 1528085974, 1528085974, 15),
(26, '全部流量统计 - 国家', 1528085980, 1528085980, 15),
(27, '全部流量统计 - 浏览器', 1528085987, 1528085987, 15),
(28, '广告维度统计 - 广告', 1528086012, 1528086012, 15),
(29, '广告维度统计 - 广告员', 1528086017, 1528086017, 15),
(30, '广告维度统计 - 广告小组', 1528086023, 1528086023, 15),
(31, '广告维度统计 - 广告美工', 1528086053, 1528086053, 15),
(32, '广告维度统计 - 活动', 1528086059, 1528086059, 15),
(33, '广告维度统计 - 子渠道', 1528086064, 1528086064, 15),
(34, '广告维度统计 - 渠道', 1528086070, 1528086070, 15),
(35, '广告维度统计 - EDM', 1528086074, 1528086074, 15),
(36, '用户数据', 1528096540, 1528096540, 15);

-- --------------------------------------------------------

--
-- 表的结构 `role_info`
--

CREATE TABLE IF NOT EXISTS `role_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT 'role的拥有人',
  `name` varchar(150) DEFAULT NULL COMMENT 'role的名称',
  `created_at` int(20) DEFAULT NULL COMMENT 'role的创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT 'role的更新时间',
  `created_customer_id` int(20) DEFAULT NULL COMMENT 'role的创建人',
  PRIMARY KEY (`id`),
  KEY `own_id` (`own_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `role_info`
--

INSERT INTO `role_info` (`id`, `own_id`, `name`, `created_at`, `updated_at`, `created_customer_id`) VALUES
(6, 93, '营销主管', 1521856907, 1521856907, 15),
(7, 93, '广告员', 1521944700, 1521944700, 15);

-- --------------------------------------------------------

--
-- 表的结构 `role_resource`
--

CREATE TABLE IF NOT EXISTS `role_resource` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT '拥有者id',
  `role_id` int(20) DEFAULT NULL COMMENT '权限id',
  `resource_id` int(20) DEFAULT NULL COMMENT '资源id',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `updated_at` int(20) DEFAULT NULL COMMENT '更新时间',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=260 ;

--
-- 转存表中的数据 `role_resource`
--

INSERT INTO `role_resource` (`id`, `own_id`, `role_id`, `resource_id`, `created_customer_id`, `updated_at`, `created_at`) VALUES
(26, 93, 1, 1, 15, 1521799583, 1521799583),
(27, 93, 1, 4, 15, 1521799583, 1521799583),
(28, 93, 1, 5, 15, 1521799583, 1521799583),
(29, 93, 1, 6, 15, 1521799583, 1521799583),
(30, 93, 1, 7, 15, 1521799583, 1521799583),
(31, 93, 1, 8, 15, 1521799583, 1521799583),
(32, 93, 2, 1, 15, 1521799695, 1521799695),
(33, 93, 2, 4, 15, 1521799695, 1521799695),
(34, 93, 2, 5, 15, 1521799696, 1521799696),
(74, 93, 7, 16, 93, 1526452613, 1526452613),
(75, 93, 7, 14, 93, 1526452613, 1526452613),
(76, 93, 7, 12, 93, 1526452613, 1526452613),
(77, 93, 7, 13, 93, 1526452613, 1526452613),
(78, 93, 7, 15, 93, 1526452613, 1526452613),
(79, 93, 7, 10, 93, 1526452613, 1526452613),
(80, 93, 7, 9, 93, 1526452614, 1526452614),
(81, 93, 7, 11, 93, 1526452614, 1526452614),
(185, 93, 6, 41, 93, 1528100604, 1528100604),
(186, 93, 6, 42, 93, 1528100604, 1528100604),
(187, 93, 6, 45, 93, 1528100604, 1528100604),
(188, 93, 6, 46, 93, 1528100604, 1528100604),
(189, 93, 6, 47, 93, 1528100604, 1528100604),
(190, 93, 6, 48, 93, 1528100604, 1528100604),
(191, 93, 6, 55, 93, 1528100604, 1528100604),
(192, 93, 6, 56, 93, 1528100604, 1528100604),
(193, 93, 6, 57, 93, 1528100604, 1528100604),
(194, 93, 6, 58, 93, 1528100604, 1528100604),
(195, 93, 6, 61, 93, 1528100604, 1528100604),
(196, 93, 6, 62, 93, 1528100604, 1528100604),
(197, 93, 6, 49, 93, 1528100604, 1528100604),
(198, 93, 6, 50, 93, 1528100604, 1528100604),
(199, 93, 6, 51, 93, 1528100604, 1528100604),
(200, 93, 6, 52, 93, 1528100604, 1528100604),
(201, 93, 6, 43, 93, 1528100604, 1528100604),
(202, 93, 6, 44, 93, 1528100604, 1528100604),
(203, 93, 6, 63, 93, 1528100604, 1528100604),
(204, 93, 6, 64, 93, 1528100604, 1528100604),
(205, 93, 6, 53, 93, 1528100604, 1528100604),
(206, 93, 6, 54, 93, 1528100605, 1528100605),
(207, 93, 6, 39, 93, 1528100605, 1528100605),
(208, 93, 6, 40, 93, 1528100605, 1528100605),
(209, 93, 6, 59, 93, 1528100605, 1528100605),
(210, 93, 6, 60, 93, 1528100605, 1528100605),
(211, 93, 6, 32, 93, 1528100605, 1528100605),
(212, 93, 6, 33, 93, 1528100605, 1528100605),
(213, 93, 6, 34, 93, 1528100605, 1528100605),
(214, 93, 6, 35, 93, 1528100605, 1528100605),
(215, 93, 6, 36, 93, 1528100605, 1528100605),
(216, 93, 6, 37, 93, 1528100605, 1528100605),
(217, 93, 6, 38, 93, 1528100605, 1528100605),
(218, 93, 6, 22, 93, 1528100605, 1528100605),
(219, 93, 6, 23, 93, 1528100605, 1528100605),
(220, 93, 6, 24, 93, 1528100605, 1528100605),
(221, 93, 6, 25, 93, 1528100605, 1528100605),
(222, 93, 6, 26, 93, 1528100605, 1528100605),
(223, 93, 6, 17, 93, 1528100605, 1528100605),
(224, 93, 6, 18, 93, 1528100605, 1528100605),
(225, 93, 6, 19, 93, 1528100605, 1528100605),
(226, 93, 6, 20, 93, 1528100605, 1528100605),
(227, 93, 6, 21, 93, 1528100605, 1528100605),
(228, 93, 6, 27, 93, 1528100605, 1528100605),
(229, 93, 6, 28, 93, 1528100605, 1528100605),
(230, 93, 6, 29, 93, 1528100605, 1528100605),
(231, 93, 6, 30, 93, 1528100605, 1528100605),
(232, 93, 6, 31, 93, 1528100605, 1528100605),
(233, 93, 6, 16, 93, 1528100605, 1528100605),
(234, 93, 6, 14, 93, 1528100605, 1528100605),
(235, 93, 6, 12, 93, 1528100605, 1528100605),
(236, 93, 6, 13, 93, 1528100605, 1528100605),
(237, 93, 6, 15, 93, 1528100605, 1528100605),
(238, 93, 6, 79, 93, 1528100605, 1528100605),
(239, 93, 6, 80, 93, 1528100605, 1528100605),
(240, 93, 6, 75, 93, 1528100605, 1528100605),
(241, 93, 6, 76, 93, 1528100605, 1528100605),
(242, 93, 6, 65, 93, 1528100605, 1528100605),
(243, 93, 6, 66, 93, 1528100605, 1528100605),
(244, 93, 6, 67, 93, 1528100605, 1528100605),
(245, 93, 6, 68, 93, 1528100605, 1528100605),
(246, 93, 6, 69, 93, 1528100605, 1528100605),
(247, 93, 6, 70, 93, 1528100605, 1528100605),
(248, 93, 6, 71, 93, 1528100605, 1528100605),
(249, 93, 6, 72, 93, 1528100605, 1528100605),
(250, 93, 6, 73, 93, 1528100605, 1528100605),
(251, 93, 6, 74, 93, 1528100605, 1528100605),
(252, 93, 6, 77, 93, 1528100605, 1528100605),
(253, 93, 6, 78, 93, 1528100605, 1528100605),
(254, 93, 6, 10, 93, 1528100605, 1528100605),
(255, 93, 6, 9, 93, 1528100605, 1528100605),
(256, 93, 6, 11, 93, 1528100605, 1528100605),
(257, 93, 6, 81, 93, 1528100605, 1528100605),
(258, 93, 6, 82, 93, 1528100605, 1528100605),
(259, 93, 6, 83, 93, 1528100605, 1528100605);
