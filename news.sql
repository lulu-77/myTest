/*
Navicat MySQL Data Transfer

Source Server         : cat
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2020-05-19 15:51:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for favor
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `click` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favor
-- ----------------------------
INSERT INTO `favor` VALUES ('1', '3', '1', '19');
INSERT INTO `favor` VALUES ('2', '3', '2', '56');
INSERT INTO `favor` VALUES ('3', '3', '3', '21');
INSERT INTO `favor` VALUES ('4', '3', '4', '3');
INSERT INTO `favor` VALUES ('7', '3', '5', '6');
INSERT INTO `favor` VALUES ('8', '3', '7', '101');
INSERT INTO `favor` VALUES ('9', '5', '5', '1');
INSERT INTO `favor` VALUES ('10', '3', '6', '3');
INSERT INTO `favor` VALUES ('11', '4', '1', '50');
INSERT INTO `favor` VALUES ('12', '4', '2', '2');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `picture` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '新京报', '2019-11-12 20:04:54', '强冷空气重拳出击 北方大部将有雨雪天气', '	<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\">新京报快讯（记者 邓琦）昨日，受冷空气影响，内蒙古大部及华北、黄淮、江淮北部等地出现6级～8级阵风、局地9级～10级，并伴有6℃～10℃的降温。一波未平一波又起，新一股强冷空气将于11月11日起自西向东影响我国大部，多地将出现雨雪天气。</span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/home/coldAir.jpeg\" width=\"640\" height=\"533\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">中央气象台</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">中央气象台预计，11日-14日，长江中下游及其以北地区有4～6级风，平均气温下降6℃～10℃，东北地区等局地降温超过12℃。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">其中12日-13日，甘肃西部、内蒙古中西部、宁夏中北部、陕西北部、山西中北部和河北北部等地的部分地区自西向东将出现沙尘天气。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">与此同时，北方地区的雨雪天气仍将持续，12日起雨雪范围将略有扩大、南压。预计新疆北部、西北地区东部、华北北部和西部、东北地区有小到中雪或雨夹雪，局地大到暴雪；西南地区东部、黄淮、江汉等地有小到中雨。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">气象专家提醒，强冷空气导致气温波动幅度大，公众需关注气温变化及时增加衣物，还需注意大风对交通出行的不利影响。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">新京报记者 邓琦</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">编辑 樊一婧 校对 刘军</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<br />\r\n</p>', '../images/home/coldAir.jpeg');
INSERT INTO `news` VALUES ('2', '河北新闻网', '2019-11-12 19:50:02', '迁安市多层次救助筑牢民生底线', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/home/news2.jpeg\" width=\"640\" height=\"533\" alt=\"\" /><br />\r\n</span> \r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">河北新闻网讯（张艳丽、阎双录）近年来，迁安市按照对象准确、应保尽保、动态管理的原则，锐意改革，完善社会救助各项制度，创新社会救助各项体制机制，打造了统筹衔接、政社互补、高效便捷、兜底有力的多层次救助新格局，真正做到了“不丢一户、不落一人”。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">●扩大外延</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">使救助范围更广泛</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">一是调整申请范围。城乡最低生活保障救助中，共同生活的家庭成员范围由原来的户口本登记所有人员调整为夫妻双方及未成年子女，成年有固定收入子女不再列入，同时老年人可作为独立家庭单独申请，为有生活来源确有困难的家庭成功申请城乡低保带来更大的几率；将低收入家庭中的重度残疾人、重病患者、困难老人、未成年人纳入单独施保范围；将家庭成员人均收入在城乡最低生活保障标准1．5倍以下且家庭财产符合低收入家庭认定标准的确定为低收入家庭予以救助；将一级视力残疾人确定为无劳动能力人员，纳入特困人员供养范围。二是充分扣减支出。在家庭经济状况核查中，扣减就业成本，按其就业收入或本市最低工资标准的30％扣减，残疾人就业的，按本市最低工资标准的50％扣减。扣减教育支出，对考入中专、职高、大专、本科院校的，在校期间按每人每年5000元标准扣减。扣减医疗支出，获得各种保险补偿、救助捐助、政策减负后，对家庭中有固定收入的成员人均负担费用超出城乡人均最低生活保障标准的部分予以扣减。三是减少限制条件。将原设定的14条限制性条件大幅削减，只对申请城乡最低生活保障的家庭在城镇购买商品房、门市房，家庭成员中拥有机动车、工程机械、大型农机具和家庭人均金融性资产进行了要求。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">●扩充内涵</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">使救助工作更温暖</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">一是标准就高不就低。特困供养人员全部享受缴纳城乡居民养老保险、城乡居民医疗保险、安康工程保险全额资助，医疗费报销100％，同时享受高龄津贴。实行补差和分档相结合的办法发放最低生活保障金，农村最低生活保障金发放标准最低为270元／月，城镇最低生活保障金最低标准为500元／月。特困人员集中供养标准提高到7728元／年，分散供养标准提高到6756元／年。农村低保标准提高到4824元／年。孤儿集中养育标准提高到1300元／月，散居孤儿养育标准提高到850元／月。二是救助实现全方位。纳入单独施保后，除享受城乡低保待遇外，还享受医疗救助等专项救助。对自付医疗费5万元以上的重病患者单独施保，给予70％的医疗救助。对因遭遇特殊困难导致基本生活暂时出现严重困难的，由镇乡人民政府、街道办事处及时给予不超过3个月城镇低保标准的救助。对超过3个月城镇低保标准的临时救助，仍不能解困的由市级民政部门给予更加充分的救助。三是政策落实更深入。对因家庭成员遭遇意外事件或患重病造成家庭基本生活困难且扣除各种报销、赔偿、保险、救助后，家庭财产损失或个人自付医疗费用超过家庭前12个月总收入20万元以上的特殊困难家庭，由市政府采取一事一议的办法予以特殊救助。将符合特困人员供养条件的现仍享受低保待遇的人员列为特困人员供养。将符合孤儿保障条件未满18周岁的未成年人同时符合特困供养条件的纳入孤儿基本生活保障范围。将父母双方为重度残疾人、服刑、死亡或失踪的儿童视为孤儿纳入保障范围。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">●简政放权</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">使救助工作更高效</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">一是下放权力。将3个月以下城乡低保标准临时救助审批权限和低收入家庭认定等权限下放到镇乡（街道），全市所有镇乡、街道综合服务大厅设立民政服务窗口，形成“一站式”阳光服务。二是精简事项。对临时救助金额在1个月城镇低保标准以下的，由本人提出申请，村（居）委会审核，镇乡人民政府、街道办事处审批，不再进行民主评议和家庭经济状况核查。对临时救助金额超过3个月城镇低保标准的审批，由镇乡人民政府、街道办事处进行家庭经济状况核查、村民代表会议评议后便可提交市级民政部门审批。新申请城乡最低生活保障的家庭，仅需由户主提供申请，其他工作由第三方负责。三是优化流程。由申请人或委托代理人向户籍所在地镇乡人民政府、街道办事处提出书面申请，第三方评估机构10个工作日内完成对申请人家庭经济状况的核查并出具《社会救助对象入户调查报告》，镇乡人民政府、街道办事处5个工作日内组织召开村（居）民主评议会，通过评议后在村（居）务公开栏进行为期7天的公示，后由镇乡人民政府、街道办事处审批，审批时限由30天缩短至22天。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">●健全机制</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">使救助工作更精准</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">一是引入第三方评估。通过政府购买服务的方式由第三方评估机构开展对申请城乡低保、特困人员供养、低收入家庭认定、临时救助的家庭经济状况核查，对最低生活保障家庭中60周岁以上老年人失能、半失能的评估认定，对特困人员生活自理能力的评估鉴定等。二是构建“大救助”格局。出台系列文件构建以最低生活保障制度为基础，临时救助制度、特困供养制度等为补充的“1＋N”救助制度体系。完善了市、镇乡（街道）、村三级社会救助联动响应机制。整合社会救助资源，设立临时救助准备金，建立多部门协调联动机制；依托“互联网＋”建设“智慧民政”，建立大数据网络系统，搭建网络救助平台。三是实施全方位监管。镇乡、街道社会救助审批小组对救助对象生存状况实行月报告制度，市级民政部门每年对享受社会救助人员进行抽查。建立社会救助领域联合惩戒机制，将骗取保障金的申请人纳入全国征信系统实施联合惩戒，确保救助的公平、公正。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\">关注河北新闻网，了解河北最新新闻。</span>\r\n\r\n</p>', '../images/home/news2.jpeg');
INSERT INTO `news` VALUES ('3', '东北网', '2019-11-13 11:00:00', '法国发生地震当地38年首次地震 核电站暂时关闭', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/home/news3.jpeg\" width=\"640\" height=\"533\" alt=\"\" /><br />\r\n</span> \r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\"> </span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">新华社照片，外代，2019年11月12日(外代一线)(2)法国东南部发生5.4级地震4人受伤11月11日，在法国勒泰伊，当地居民在一座体育馆内聚集。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">新华社巴黎11月11日电(记者 唐霁) 法国东南部11日发生5.4级地震，造成4人受伤。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">法国地震中心办公室发布消息说，地震发生在当地时间11日11时52分，震中位于法国东南部德龙省蒙特利马尔市南部，震源深度约10公里，周边的里昂、蒙彼利埃等城市有明显震感。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">根据德龙省和相邻的阿尔代什省政府在社交媒体发布的消息，地震在两省共造成1人重伤、3人轻伤。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">法国媒体援引当地居民的话说，地震持续10秒左右，强度极大，房屋剧烈晃动。报道说地震造成部分房屋受损。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">法国地震中心办公室预测该地区随后可能发生余震。当地政府要求居民尽可能暂时待在户外，并临时向居民开放3个体育场。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">海外网消息，据法新社报道，斯特拉斯堡地震局的信息显示，11日上午11点50分许，德龙省的蒙特利马附近发生里氏5.4级地震，整个罗讷河谷乃至奥克西塔尼大区的部分地区有强烈震感。蒙特利马市长弗兰克·雷尼耶表示，至下午14时，消防队进行了约15次干预。地震发生时，蒙特利马一名男子从梯子上跌落，重伤入院。阿尔代什省政府在报告中称，当地勒泰伊亦有三人在地震中受伤，建议居民远离住宅，政府已开放三间体育馆用于人员安置。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">蒙特利马27岁的中学教师卡丽娜告诉当地媒体，地震来得令人措手不及。当时她正在批改作业，突闻地面传来闷雷般的轰隆声，于是她坐到沙发上，感到脚下剧烈颤动，书架上的摆设都开始移位。她很快想到了地震，但又担心爆炸，因为附近有一座核电站。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">住在震中附近的17岁少年加尔文则描述说，家中的地板和墙壁都开始颤动，但他根本没意识到地震，所以也没想到躲到桌子下之类预防措施，震动持续了大约10秒，后来他在社交平台上收到很多朋友发来的询问表示关切。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">阿尔代什省阿尔巴拉罗曼小镇的居民伊丽莎白感到震惊，“这太神奇了，脚下的大地开始颤抖，我们看到房子在动，几秒钟后想到也许是地震，但又觉得不可能。我们从1981年就住在这所房子里，从来没遭遇过地震。”</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">法国内政部及消防部门呼吁民众，若非紧急情况，避免拨打18或112热线电话，以保持线路畅通。</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">德龙省行政长官休·穆图赫表示，位于阿尔代什省的克吕阿核电站反应堆将暂时关闭，以进行彻底检查，而距离震中最远的特里卡斯廷核电站，根据法国原子能安全委员会的说法无需关闭。目前，法国国家电力公司也在核查地震的确切影响范围。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-strong\" style=\"font-size:18px;font-weight:700;\"></span> \r\n</p>', '../images/home/news3.jpeg');
INSERT INTO `news` VALUES ('4', '中国网 谢露莹', '2019-11-13 14:49:47', '中国成功发射“吉林一号”高分02A卫星', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/home/news4.jpg\" width=\"640\" height=\"533\" alt=\"\" /><br />\r\n</span> \r\n<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"color:#0070C0;\">2019年11月13日14时35分，我国在太原卫星发射中心用长征六号运载火箭，以一箭五星方式成功将宁夏一号卫星（又称钟子号卫星）发射升空。</span> \r\n</p>\r\n<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	中国网军事11月13日讯 （记者 谢露莹）2019年11月13日14时35分，我国在太原卫星发射中心用长征六号运载火箭，以一箭五星方式成功将宁夏一号卫星（又称钟子号卫星）发射升空。卫星顺利进入预定轨道，任务获得圆满成功。\r\n</p>\r\n<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	宁夏一号5颗卫星是宁夏金硅信息技术有限公司自主投资建设的商业航天项目。卫星主要应用于遥感探测等领域。\r\n</p>\r\n<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	宁夏一号卫星和长征六号运载火箭分别由航天东方红卫星有限公司、上海航天技术研究院研制。\r\n</p>\r\n<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	此次任务是长征系列运载火箭的第318次航天飞行。\r\n</p>', '../images/home/news4.jpg');
INSERT INTO `news` VALUES ('5', '金融界', '2019-11-13 16:11:00', '四天重挫1300点！恒指收跌1.82%，地产股领跌，飞鹤上市首秀破发', '<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"color:#0070C0;\"> </span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">来源：金融界网站</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">11月13日消息，投资者关注企业财报及经济数据，同时美国总统特朗普抨击美联储在降息问题上犹豫不决，并指责其限制了美国经济和股市的涨幅，美股收盘涨跌互现，纳指再创收盘新高。今日早盘，恒指低开1.12％后一路走低，之后维持低位震荡，截至收盘跌1.82％，报26571.46点；国企指数跌1.61％，红筹指数跌1.47％。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">地产股是大跌的重灾区，新世界发展跌近5％领跌蓝筹股、九龙仓集团、信和置业跌超3％；</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">券商股跌幅惨烈。国泰君安跌4.92％，中国银河跌近3％，中金公司跌近2％；</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">今天有三只新股在港交所上市，两股已破发，章子怡代言的中国飞鹤收盘跌1.33％破发，</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">资料显示，公司是中国婴幼儿奶粉第一品牌，2013年6月28日，公司宣布从纽交所退市并完成私有化。2019年7月公司提交招股书，时隔6年转战港股上市。另一只破发的新股利华控股集团大跌27.06％，而SPROCOMM INTEL大涨24％。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">【宏观及行业】</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">1. 内蒙古锡林郭勒盟确诊2例鼠疫病例</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">2. 撬动2万亿投资 PPP项目重启回暖信号</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">3. 中国移动发布2020年至2021年通信工程设计与可行性研究集中采购招标公告</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">4. 新修订食品安全法增设“处罚到人”最高罚款年收入10倍</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">5. 外交部：俄东线天然气管道项目预计于今年12月投产通气</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">6. 10月猪肉出厂价格总指数月平均值每公斤49.50元 环比涨33.5％</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">【大行评级】</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">1. 中金：维持华润燃气（01193）“跑赢行业”评级 目标价45港元</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">2. 中金：维持万洲国际（00288）“跑赢行业”评级 目标价10.35港元</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">3. 中金：维持碧桂园（02007）“跑赢行业”评级 上调目标价至13.87港元</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">4. 花旗：上调世茂房地产（00813）目标价至33.8港元 维持“买入”评级</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\">5. 汇丰：上调瑞声科技（02018）目标价至54.1港元 维持“持有”评级</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:SimSun, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;\">\r\n	<br />\r\n</p>', null);
INSERT INTO `news` VALUES ('6', '萌神木木', '2019-11-15 12:52:13', '李小璐发文称被敲诈，卓伟亲自上线打脸，为何出轨者总有理由？', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/amuse/news1.1.jpeg\" width=\"640\" height=\"533\" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">11月14日，李小璐和贾乃亮官宣离婚，虽然这一结果早在很多人预料之内，但突然公布还是惹来不少网友唏嘘。离婚声明发布后不久，李小璐又于15日凌晨发布长文，称有人用跟踪偷拍的方式窃取其行踪，并对其实施威胁，导致她陷入舆论风暴，甚至一度想过自杀，但因为想到母亲的责任，最终为了甜馨放弃这一想法，所以希望大家能客观看待她，不要伤及家人和朋友。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"background-color:#FFFFFF;color:#333333;font-family:arial;font-size:16px;\"><span style=\"line-height:1;\"></span><span style=\"line-height:1;\">虽然文章写得非常之长，但通篇看下来，李小璐对于婚内出轨一事依然绝口不提，也没有一丝道歉悔改之意。文章前半部分，她不惜用大量华丽词汇和感人故事叙述自己的人善心美，后半部分则重点斥责偷拍者影响她的正常生活，背后利益集团对她的迫害，以及“不明真相”的吃瓜群众对她的网络暴力。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">如此没有诚意的文章，一经发出就惹来网友群嘲，纷纷指责她只想着拿孩子当挡箭牌，缺乏道德底线，不先检讨自己，一味只知怪别人陷害，不禁感慨她三观为什么这么奇葩。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">当然也不是所有人都反对李小璐的，一位自称是李小璐和贾乃亮二人好友的律师就于不久前专门发文替她辩解，并在四个方面试图证明李小璐其实并没有婚内出轨。首先唐律师就之前的夜宿门和近日的私密视频事件进行了说明，简单说就是第一次夜宿有其他朋友在不算数，第二次已经是离婚后也不算数。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">其次他还疑似内涵贾乃亮之前宠妻狂魔是立人设，说双方感情的事外人看看就好，任何人在家里的形象和在外面的形象都不一定是完全吻合的，尤其特别指出贤妻良母不一定是真的贤妻良母，宠妻狂魔也不一定是真的宠妻狂魔。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">最后，他表示视频事件只是二人离婚的导火索，还说李小璐内心深处有很多委屈。嗯，这条不用他说了，李小璐的长文已经写的足够委屈了。</span><br />\r\n</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">总之，按照李小璐和她这位律师好友来说，她最多只能算是做事不慎，不仅没有婚内出轨，也没有因为这事离婚，所有事情都是网友闲着没事干臆想出来的，而被拍到的部分则是别人故意陷害。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">只是遗憾的是，互联网是有记忆的，夜宿门事件刚出时双方的表态大家犹记于心，前不久私密视频曝出后PGone的各种发言也还就在眼前，所以网友对于这种辩解实难买账。</span></span>\r\n</p>\r\n<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/amuse/news1.2.jpeg\" width=\"640\" height=\"533\" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">更让人尴尬的是，当初拍到李小璐夜宿门的卓伟团队，也在随后进行了回应。卓伟在朋友圈发文表示，自己从未给李小璐打电话“威胁”，反而是对方“满世界托人找我”，也否认收过李小璐及其亲友的钱财，并爆料她被骗了1200万。呃……事件变化之快还真是令人猝不及防。</span></span>\r\n</p>\r\n<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/amuse/news1.3.jpeg\" width=\"640\" height=\"533\" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;\"> </span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span class=\"bjh-p\" style=\"line-height:1;\">除了被偷拍威胁之外，李小璐还在发表的长文之中说道，自己只是千千万万女人当中的一个普通女人，希望对她有成见的人不要以封建社会那种对待妇女的苛刻标准对待自己。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span class=\"bjh-p\" style=\"line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">这段“精彩发言”，不禁让人想到成龙当年那句，“我犯了全天下很多男人都会犯的错”，言之凿凿，简直让听者“落泪”。而且细想之下，李小璐比成龙还要高阶，虽然成龙话中颇有不甘，但至少他还承认他是犯了错，李小璐可是从始至终都没有承认自己有错。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span class=\"bjh-p\" style=\"line-height:1;\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">说起来也是奇怪，很多出轨者明明是自己出轨在前，却总还是有各种理由，甚至还要泼脏水给另一方，表示自己也是另有苦衷。没错，无论是婚姻中还是爱情里，两个人都可能会经历感情瓶颈期，但如果真的觉得过不下去，大大方方分开就好，偷偷摸摸出轨又算什么呢？</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span class=\"bjh-p\"><span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">当然事已至此，再去过多指责谁是谁非也已经没有意义，何况孩子是真的最无辜的，希望李小璐真的能肩负起一个母亲的责任，在未来的时间里好好抚养甜馨吧。</span><span class=\"bjh-a\" style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">#李小璐贾乃亮离婚#</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '../images/amuse/news1.1.jpeg');
INSERT INTO `news` VALUES ('7', '中国体育报', '2019-11-15 08:06:29', '国际乒联奥地利公开赛正赛展开', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/amuse/news2.jpg\" width=\"640\" height=\"533\" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">当地时间11月14日，2019国际乒联世界巡回赛奥地利公开赛进入正赛阶段，中国选手在混双、男双等项目上顺利晋级。<br />\r\n首次搭档混双比赛的林高远/朱雨玲顺利从资格赛突围，首轮他们3比0横扫去年国际乒联世界巡回赛总决赛混双冠军中国香港组合黄镇廷/杜凯琹。男双方面，世乒赛季军组合梁靖崑/林高远首轮迎战法国组合弗洛雷/莱贝松，双方苦战5局，最终中国组合把握住最后的关键球以12比10赢下决胜局战胜对手晋级。从资格赛中突围的中国队唯一一对女双组合顾玉婷/孙铭阳正赛首轮1比3不敌韩国组合崔孝珠/梁夏银，无缘次轮。<br />\r\n经历了前两天的资格赛，男单赛场中国队10名参赛队员中仅周雨和赵子豪两人成功突围晋级正赛。国乒女队的8名队员中，张瑞、王艺迪、顾玉婷、钱天一4人成功突围，晋级女单正赛。<br />\r\n由于小将王楚钦在与队友赵子豪的男单资格赛最后一轮比赛中情绪失控，故意扔掉球拍，造成不良社会影响。中国乒协决定给予王楚钦停赛三个月处罚，对负有管理责任的主管教练刘国正给予停赛一个月处罚，并责令两人立即回国。由此，王楚钦原本与樊振东、刘诗雯搭档的男双、混双比赛也退出了此次比赛的争夺。（李雪颖／文　图片转自国际乒联微信公众号）<br />\r\n<br />\r\n</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '../images/amuse/news2.jpg');
INSERT INTO `news` VALUES ('8', '中国新闻网', '2019-07-03 21:10:45', '河南数字经济“加速度”：今年郑州市主城区实现5G网络全覆盖', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/Internet/news1.jpg\" width=\"640\" height=\"533\" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">　中新社郑州7月3日电 (记者 李贵刚)继洛阳大数据产业园、许昌“泛在5G小镇”、鹤壁5G产业园等一批项目落地后，今年以来，人口大省河南数字经济步入快速发展期。<br />\r\n　　以河南省会郑州为例，今年以来5G产业好消息不断：5G无人驾驶巴士在郑州“智慧岛”区域试运行；5G信号全覆盖的郑州地铁5号线运营；郑州传化物流小镇5G试点落户……<br />\r\n　　河南省发展和改革委员会2日晚间公布的《2019年河南省数字经济工作要点》显示，该省今年将重点实施数字基础设施建设、产业集聚发展、创新能力建设、数字化新业态发展、制造业数字化转型、服务业数字化转型、农业数字化转型、新型智慧城市建设等八大重点任务。其中，涉及“智慧建设”的笔墨颇多。<br />\r\n&nbsp; &nbsp; 在上述八大重点任务中，河南还公布了一批数字经济发展的新动向。其中不乏有推动中德(许昌)中小企业合作区和中芬创新产业基地落户河南，打造中国(郑州)智能传感谷，建设国家超级计算郑州中心等项目。<br />\r\n　　值得关注的是，2019年河南数字经济发展主要目标提出，数字基础网络全面提速，郑州市主城区实现5G网络全覆盖，其他省辖市实现重点区域5G网络覆盖。<br />\r\n其中，在数字化新业态发展方面，河南提出加快推进海康威视区域总部、浪潮产业园、华为国内区域服务中心、软通动力中原总部、诺基亚全球交付中心、京东云(鹤壁)数字经济产业园等项目落地，推动一批5G芯片、智能手机项目落地。<br />\r\n　　同时，在农业、交通方面，河南提出2019年底将实现全省所有20户以上自然村全通光纤，实现汽车ETC安装率80%以上。(完)<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【编辑:丁宝秀】<br />\r\n</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '../images/Internet/news1.jpg');
INSERT INTO `news` VALUES ('9', '中国青年网', '2019-11-15 11:21:00', '联想蓝烨：整合全域数据，实现通链智能，推动智能化变革', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/science/news1.png\" \" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">11月14日，联想2019创新科技大会在北京雁栖湖盛大召开。今年6月回归联想的蓝烨以数据智能业务集团总裁的身份站上大会行业智能日的舞台，发表主题为《全域智能平台支撑工业智能》的演讲，强调联想经过8年智能化转型之路，已经搭建起集数据智能核心平台、行业智能应用和端到端专业服务于一体的行业智能通用架构。联想将继续依托数据智能事业部，全面支撑联想行业智能战略的落地与实施。蓝烨表示，联想将凭借“端边云网智”架构体系，整合全域数据、实现通链智能，持续推动中国的智能化变革。<br />\r\n<strong>搭建行业智能通用架构，支持行业智能落地</strong><br />\r\n行业智能作为大势所趋，已经成为企业转型的主要方向。在这一过程中，很多企业面临着一些共同的挑战，包括设备连接能力弱、数据搜集和分析能力不足、缺乏能够覆盖全局的解决方案等，制约了他们的智能化转型之路。<br />\r\n联想基于自身在数据智能方面的转型实践和对行业的深刻观察，不断对外输出核心经验与技术，并打造了行业智能通用架构，包括：以联想三大软件技术产品为支撑的数据智能核心平台，针对智能制造、智慧教育、智慧城市等各类行业而构建的智能化数据应用，以及整合了智能化转型规划咨询和实施能力的端到端专业服务。通过这一完整的布局，联想可以为各行各业的智能化升级提供强力支持。<br />\r\n在此次联想创新大会上，蓝烨着重介绍了可对各类智能化数据应用起到基础支撑作用的数据智能核心平台。该平台可细分为物联网平台，大数据平台和人工智能平台三个层次。物联网平台起到工业设备数据接入，边缘处理和实时智能控制的作用。大数据平台汇总了企业内部生产经营数据和外部行业数据，提供丰富的数据分析和展现的工具，进而构建成企业统一的数据中台。而人工智能平台通过机器学习技术及丰富的算法和应用模型库，支撑企业在“研产供销服”全价值链进行数据应用的开发和运营，从而提升决策效率和质量。<br />\r\n在此基础上，联想相应研发了三款基础平台产品。其中，LeapIOT作为构建物联网平台的工具型产品，可帮助企业实现工业数据采集、边缘计算和实时分析；LeapHD作为帮助企业构建数据中台的基础平台产品，能够解决数据汇聚、融合、治理及分类等问题；LeapAI则可用于构建企业级人工智能平台，助力企业完成各项关键指标的预测，知识融合及智能决策等。<br />\r\n生态合作，助力中国智能变革<br />\r\n蓝烨在演讲中强调：“我们衷心希望与更多企业开展合作，通过联想数据智能的咨询服务和技术实施能力，借助完善的技术平台产品，为更多的工业企业搭建工业互联网平台，开发创新性的数据应用。”<br />\r\n目前，联想已经赋能众多合作伙伴的智能化转型。尤其是得益于自身的制造基因和内部智能转型经验，联想已经成功为百余家中国制造500强企业提供了全面的智能制造解决方案。近期，联想更是在2386家大型企业中脱颖而出，以第一名的身份成为武汉市政府推进域内工业智能化改造升级的咨询服务机构。未来，联想将进一步发挥数据智能的深厚积累，在更多企业转型的道路上发挥其重要作用，成为中国智能化变革的引领者和赋能者。<br />\r\n</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n', '../images/science/news1.png');
INSERT INTO `news` VALUES ('10', '中国日报网', '2019-11-08 13:49:05', '江西软件大学勇夺全国大学生电子竞技总决赛冠军', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/science/news2.png\" \" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">近日，第三届英特尔大师挑战赛（lMC）全国总决赛在北京举行，江西软件职业技术大学代表队挑战成功，荣登全国大学生电子竞技总决赛冠军宝座。<br />\r\n此届赛事吸引了全国超过500个城市，10000只战队报名参赛，不仅覆盖全国300所高校、1500家网咖，更与国际职业电竞赛事英特尔极限大师赛打通赛事，引爆线上线下游戏与电竞爱好者的年末狂欢。<br />\r\n由查景豪、胡晨、陈鑫、杜昊宇、周东霖、杨洋等6位电子竞技运动与管理专业学生组成的江西软件大学代表队，在张佳老师的指导下，历经六个月的激烈竞争，一路过关斩将所向披靡。先后击败了包括电子科技大学、四川大学、重庆邮电大学、中南林业科技大学、江西财经大学等所有对手，以连胜14场的优异成绩获得了参加北京总决赛的资格。<br />\r\n11月5日，万众瞩目的总决赛在北京首都体育学院北京大学生体育馆举行，江西软件大学最终以2：1的成绩击败上一届英特尔大师挑战赛冠军、世界电子竞技高校联盟冠军集美大学，挑战成功，首次获得全国电子竞技大赛总冠军。<br />\r\nIMC在中国已连续举办三年，如今赛事的影响力与整体规模都越来越大，有效触及4500万中国游戏玩家，占全国1.5亿PC游戏玩家的30%。现在的电竞运动早已从最初的单纯游戏娱乐逐渐衍生为一个互联网时代带动整个文旅大产业发展的新引擎。江西软件大学成功夺冠，标志着江西省在探索创新经济发展的新业态新模式新路径方面取得了突破，将给更多生态领域的创新带来启示。（尹祖国供图）<br />\r\n<br />\r\n（中国日报江西记者站 王健）<br />\r\n<br />\r\n来源：中国日报网<br />\r\n</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '../images/science/news2.png');
INSERT INTO `news` VALUES ('11', '人民日报海外网', '2019-11-15 10:43:39', '法国大雪已致1死1伤14万户断电 11省发布雪情预警', '<p style=\"font-size:16px;font-family:Arial, 宋体;color:#333333;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:arial;\"><img src=\"../images/home/news5.jpeg\" alt=\"\" />\r\n</span> \r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;line-height:1;\">图源/法新社<br />\r\n海外网11月15日电 近日，法国东南部风霜雨雪交加，11个省份发布雪情橙色预警，伊泽尔省的大雪已造成一死一伤。<br />\r\n据法国《世界报》报道，14日晚19时许，伊泽尔省北部一名63岁司机被大雪压倒的树木砸中，不治身亡，另有一名27岁青年受伤，被紧急送往医院。此外，伊泽尔省、德龙省、阿尔代什省的降雪达到20年来最高水平，大雪压塌高压电缆，约14万户家庭断电，这三个省份宣布15日部分学校停课。<br />\r\n《巴黎人报》援引法国气象局14日的报告称，索恩-卢瓦尔省、卢瓦尔省、罗讷省、安省、伊泽尔省、德龙省、阿尔代什省、沃克吕兹省、罗讷河口省、瓦尔省、滨海阿尔卑斯省等11个省启动雪情橙色预警，所有相邻省份则处于雪情黄色预警状态。根据法国气象局的说法，安省、阿尔代什省、德龙省、伊泽尔省、卢瓦尔省、罗讷省、索恩-卢瓦尔省等7个省份的降雪量可能在几厘米至20厘米，在海拔300米以上的位置，降雪量可能达到20至30厘米甚至更多，气温也会在短时间内急剧下降。<br />\r\n气象局提醒，降雪天气将造成交通困难，预警省份将采取道路限行措施，部分公路将禁止重型货车上路，其它车辆也须安装雪胎等必要设备。法国国家铁路公司（SNCF）同时宣布，从格勒诺布尔开往里昂、瓦朗斯、韦讷的三条线路受雪情影响，列车停止运行。<br />\r\n此外， 罗讷河口省、瓦尔省、沃克吕兹省启动暴风雨橙色预警。气象局警告称，几个小时内，上述地区的降雨量将达到60毫米至100毫米，还有可能降下冰雹。法国其它地区的天气也很不稳定，滨海阿尔卑斯省和瓦尔省发布了海浪橙色预警，南科西嘉省和罗讷河口省发布了海浪黄色预警。（海外网-巴黎-鲁佳）<br />\r\n本文系版权作品，未经授权严禁转载。海外视野，中国立场，浏览人民日报海外版官网——海外网www.haiwainet.cn或“海客”客户端，领先一步获取权威资讯。<br />\r\n</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '../images/home/news5.jpeg');
INSERT INTO `news` VALUES ('12', '11', '2019-11-11 18:38:47', '111', '11111', '11');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES ('1', '1', '1');
INSERT INTO `newstype` VALUES ('2', '2', '1');
INSERT INTO `newstype` VALUES ('3', '3', '2');
INSERT INTO `newstype` VALUES ('4', '4', '3');
INSERT INTO `newstype` VALUES ('5', '5', '4');
INSERT INTO `newstype` VALUES ('6', '6', '5');
INSERT INTO `newstype` VALUES ('7', '7', '6');
INSERT INTO `newstype` VALUES ('8', '8', '7');
INSERT INTO `newstype` VALUES ('9', '9', '8');
INSERT INTO `newstype` VALUES ('10', '10', '9');
INSERT INTO `newstype` VALUES ('11', '11', '2');
INSERT INTO `newstype` VALUES ('12', '12', '5');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '国内');
INSERT INTO `type` VALUES ('2', '国际');
INSERT INTO `type` VALUES ('3', '军事');
INSERT INTO `type` VALUES ('4', '财经');
INSERT INTO `type` VALUES ('5', '娱乐');
INSERT INTO `type` VALUES ('6', '体育');
INSERT INTO `type` VALUES ('7', '互联网');
INSERT INTO `type` VALUES ('8', '科技');
INSERT INTO `type` VALUES ('9', '游戏');
INSERT INTO `type` VALUES ('10', '汽车');
INSERT INTO `type` VALUES ('11', '房产');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test02', '083d86ffed7b275b686f7ea6119d60f3', '123456', null);
INSERT INTO `user` VALUES ('3', '123456', 'd1acffdb01e91715ad9f2c6390548fe5', '1234565', '14513@qq.com');
INSERT INTO `user` VALUES ('4', 'test01', 'a4d9cdf2103f87749b1233e454ade18b', '1234567', '1444@qq.com');
INSERT INTO `user` VALUES ('5', 'test03', '0f4911ad6b9734b79dfc540a4c6f2150', '12345677', '13456789@qq.com');