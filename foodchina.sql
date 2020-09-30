/*
 Navicat Premium Data Transfer

 Source Server         : jethro
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : localhost:3306
 Source Schema         : foodchina

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 30/09/2020 16:15:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for eatables
-- ----------------------------
DROP TABLE IF EXISTS `eatables`;
CREATE TABLE `eatables`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱图片',
  `userId` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `foodname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱名称',
  `only` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '独家标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eatables
-- ----------------------------
INSERT INTO `eatables` VALUES (1, 'http://127.0.0.1:7001/public/eatables/1.jpg', 1, '清炒大白菜', '1');
INSERT INTO `eatables` VALUES (2, 'http://127.0.0.1:7001/public/eatables/2.jpg', 1, '莲蓉馅广式月饼', '0');
INSERT INTO `eatables` VALUES (3, 'http://127.0.0.1:7001/public/eatables/3.jpg', 1, '红椒炒青瓜', '1');
INSERT INTO `eatables` VALUES (4, 'http://127.0.0.1:7001/public/eatables/4.jpg', 1, '天麻西洋参煲乳鸽汤', '1');
INSERT INTO `eatables` VALUES (5, 'http://127.0.0.1:7001/public/eatables/5.jpg', 1, '桂花桃酥', '0');
INSERT INTO `eatables` VALUES (6, 'http://127.0.0.1:7001/public/eatables/6.jpg', 1, '芒果思慕雪', '0');
INSERT INTO `eatables` VALUES (7, 'http://127.0.0.1:7001/public/eatables/7.jpg', 1, '焦糖杏仁佛罗伦汀', '0');
INSERT INTO `eatables` VALUES (8, 'http://127.0.0.1:7001/public/eatables/8.jpg', 1, '酸辣菠菜面', '1');
INSERT INTO `eatables` VALUES (9, 'http://127.0.0.1:7001/public/eatables/9.jpg', 1, '小鸡炖蘑菇', '0');
INSERT INTO `eatables` VALUES (10, 'http://127.0.0.1:7001/public/eatables/10.jpg', 1, '南瓜煎饼', '1');
INSERT INTO `eatables` VALUES (11, 'http://127.0.0.1:7001/public/eatables/11.jpg', 1, '青椒肉末炒土豆丝', '1');
INSERT INTO `eatables` VALUES (12, 'http://127.0.0.1:7001/public/eatables/12.jpg', 1, '红萝卜木耳炒蛋', '1');
INSERT INTO `eatables` VALUES (13, 'http://127.0.0.1:7001/public/eatables/13.jpg', 1, '鱼肉馅儿水饺', '0');
INSERT INTO `eatables` VALUES (14, 'http://127.0.0.1:7001/public/eatables/14.jpg', 1, '虾仁炒芹菜', '1');
INSERT INTO `eatables` VALUES (15, 'http://127.0.0.1:7001/public/eatables/15.jpg', 1, '猪肉角瓜馅饺子', '1');
INSERT INTO `eatables` VALUES (16, 'http://127.0.0.1:7001/public/eatables/16.jpg', 1, '板栗华夫饼', '0');
INSERT INTO `eatables` VALUES (17, 'http://127.0.0.1:7001/public/eatables/17.jpg', 1, '藤椒牛肉月饼', '0');
INSERT INTO `eatables` VALUES (18, 'http://127.0.0.1:7001/public/eatables/18.jpg', 1, '精品五仁月饼', '0');
INSERT INTO `eatables` VALUES (19, 'http://127.0.0.1:7001/public/eatables/19.jpg', 1, '芝麻脆底盐可颂', '0');
INSERT INTO `eatables` VALUES (20, 'http://127.0.0.1:7001/public/eatables/20.jpg', 1, '超简单好吃的桃酥', '0');

-- ----------------------------
-- Table structure for idea
-- ----------------------------
DROP TABLE IF EXISTS `idea`;
CREATE TABLE `idea`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `title1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题一',
  `title2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题二',
  `title3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of idea
-- ----------------------------
INSERT INTO `idea` VALUES (1, 'http://127.0.0.1:7001/public/idea/1.jpg', '健康', '食疗', '健康首页');
INSERT INTO `idea` VALUES (2, 'http://127.0.0.1:7001/public/idea/2.jpg', '烘焙', '食谱', '烘焙专区');
INSERT INTO `idea` VALUES (3, 'http://127.0.0.1:7001/public/idea/3.jpg', '为您推荐', NULL, '我的收藏');

-- ----------------------------
-- Table structure for idea_topic
-- ----------------------------
DROP TABLE IF EXISTS `idea_topic`;
CREATE TABLE `idea_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ideaId` int(11) NULL DEFAULT NULL COMMENT 'idea的id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '话题链接',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of idea_topic
-- ----------------------------
INSERT INTO `idea_topic` VALUES (1, 1, '降血压食物推荐，从日常开始改善！', 'https://www.meishichina.com/Health/CommonSense/202001/224129.html');
INSERT INTO `idea_topic` VALUES (2, 1, '日常按摩这些部位，养生更养身', 'https://www.meishichina.com/Health/JianKang/202001/224120.html');
INSERT INTO `idea_topic` VALUES (3, 1, '脑溢血原因，冬天要更注意', 'https://www.meishichina.com/Health/JianKang/202001/224117.html');
INSERT INTO `idea_topic` VALUES (4, 1, '孩子体质差总生病，父母该怎么办？', 'https://www.meishichina.com/Health/JianKang/202001/224115.html');
INSERT INTO `idea_topic` VALUES (5, 1, '快手早餐，营养满分の三明治', 'https://www.meishichina.com/mofang/sanmingzhizuofadaquan/');
INSERT INTO `idea_topic` VALUES (6, 1, '那些美颜食物的神级吃法', 'https://www.meishichina.com/mofang/meiyanshiwu/');
INSERT INTO `idea_topic` VALUES (7, 2, '不输猪油版的桃酥做法', 'https://home.meishichina.com/pai-1127987.html');
INSERT INTO `idea_topic` VALUES (8, 2, '这些挑水果小窍门，你知道吗？', 'https://home.meishichina.com/pai-993792.html');
INSERT INTO `idea_topic` VALUES (9, 2, '内藏惊喜的彩虹戚风蛋糕', 'https://home.meishichina.com/pai-740144.html');
INSERT INTO `idea_topic` VALUES (10, 2, '消耗蛋挞皮－简单版红薯酥', 'https://home.meishichina.com/pai-730072.html');
INSERT INTO `idea_topic` VALUES (11, 2, '油条华丽转身，也是蛮拼哒', 'https://home.meishichina.com/collect-4791212.html');
INSERT INTO `idea_topic` VALUES (12, 2, '另类咸香口儿 满足你的味蕾！', 'https://www.meishichina.com/mofang/xianweihb/');
INSERT INTO `idea_topic` VALUES (13, 3, '合理饮食，远离脂肪肝', 'https://www.meishichina.com/mofang/yuanlizhifanggan/');
INSERT INTO `idea_topic` VALUES (14, 3, '划重点！食物降血脂这些更有效', 'https://www.meishichina.com/mofang/shiwujiangxuezhi/');
INSERT INTO `idea_topic` VALUES (15, 3, '粗粮细作：健康能量燕麦甜品 ', 'https://www.meishichina.com/mofang/yanmaihb/');
INSERT INTO `idea_topic` VALUES (16, 3, '童趣童味，儿童创意餐点', 'https://mamapai.meishichina.com/tongqutongwei/');
INSERT INTO `idea_topic` VALUES (17, 3, 'ACA ATO-HB38HT电烤箱', 'https://zhen.meishichina.com/26840/');
INSERT INTO `idea_topic` VALUES (18, 3, '酒后头痛，5种食物可缓解', 'https://www.meishichina.com/mofang/huanjiejiuhoutoutengshiwu/');

-- ----------------------------
-- Table structure for makeup
-- ----------------------------
DROP TABLE IF EXISTS `makeup`;
CREATE TABLE `makeup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食材图片',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食材名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食材说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of makeup
-- ----------------------------
INSERT INTO `makeup` VALUES (1, 'http://127.0.0.1:7001/public/makeup/xigua.jpg', '西瓜', '吃瓜群众的最爱');
INSERT INTO `makeup` VALUES (2, 'http://127.0.0.1:7001/public/makeup/maodou.jpg', '毛豆', '宵夜C位');
INSERT INTO `makeup` VALUES (3, 'http://127.0.0.1:7001/public/makeup/sigua.jpg', '丝瓜', '养颜美人水');
INSERT INTO `makeup` VALUES (4, 'http://127.0.0.1:7001/public/makeup/xihongshi.jpg', '西红柿', '水果or蔬菜');
INSERT INTO `makeup` VALUES (5, 'http://127.0.0.1:7001/public/makeup/huanggua.jpg', '黄瓜', '厨房里的美容师');
INSERT INTO `makeup` VALUES (6, 'http://127.0.0.1:7001/public/makeup/qiezi.jpg', '茄子', '微笑的代名词');
INSERT INTO `makeup` VALUES (7, 'http://127.0.0.1:7001/public/makeup/kugua.jpg', '苦瓜', '共苦是件很甜的事');
INSERT INTO `makeup` VALUES (8, 'http://127.0.0.1:7001/public/makeup/xiaolongxia.jpg', '小龙虾', '社交新宠儿');
INSERT INTO `makeup` VALUES (9, 'http://127.0.0.1:7001/public/makeup/zhuliji.jpg', '猪里脊', '超嫩小鲜肉');
INSERT INTO `makeup` VALUES (10, 'http://127.0.0.1:7001/public/makeup/hali.jpg', '蛤蜊', '平民海鲜');
INSERT INTO `makeup` VALUES (11, 'http://127.0.0.1:7001/public/makeup/yarou.jpg', '鸭肉', '夏季滋补佳品');
INSERT INTO `makeup` VALUES (12, 'http://127.0.0.1:7001/public/makeup/jiyu.jpg', '鲫鱼', '一勺清汤胜万钱');
INSERT INTO `makeup` VALUES (13, 'http://127.0.0.1:7001/public/makeup/jichi.jpg', '鸡翅', '老少通吃');
INSERT INTO `makeup` VALUES (14, 'http://127.0.0.1:7001/public/makeup/paigu.jpg', '排骨', '可记得吮指之乐');

-- ----------------------------
-- Table structure for myuser
-- ----------------------------
DROP TABLE IF EXISTS `myuser`;
CREATE TABLE `myuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myuser
-- ----------------------------
INSERT INTO `myuser` VALUES (1, '采蘑菇的小姑娘', '123', 'http://127.0.0.1:7001/public/userPic/1.jpg', 'aaa@163.com', '四川成都', '这是我的个性签名');
INSERT INTO `myuser` VALUES (2, '小洞天', '123', 'http://127.0.0.1:7001/public/userPic/2.jpg', 'bbb@163.com', '四川南充', '1111');
INSERT INTO `myuser` VALUES (3, '琪_feXjZ8E2', '123', 'http://127.0.0.1:7001/public/userPic/3.jpg', 'ccc@163.com', '四川达州', '2222');
INSERT INTO `myuser` VALUES (4, '沙儿飞飞❉', '123', 'http://127.0.0.1:7001/public/userPic/4.jpg', 'ddd@163.com', '四川广元', '333');
INSERT INTO `myuser` VALUES (5, '米拉Miira', '123', 'http://127.0.0.1:7001/public/userPic/5.jpg', 'eee@163.com', '四川宜宾', '444');
INSERT INTO `myuser` VALUES (6, '小乙美食', '123', 'http://127.0.0.1:7001/public/userPic/6.jpg', 'fff@163.com', '四川巴中', '555');
INSERT INTO `myuser` VALUES (7, '四月豆', '123', 'http://127.0.0.1:7001/public/userPic/7.jpg', 'ggg@163.com', '四川雅安', '666');
INSERT INTO `myuser` VALUES (8, '我是大梦梦', '123', 'http://127.0.0.1:7001/public/userPic/8.jpg', 'hhh@163.com', '四川自贡', '7777');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL COMMENT '发表用户',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '动态内容',
  `prodate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发表时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for share_pic
-- ----------------------------
DROP TABLE IF EXISTS `share_pic`;
CREATE TABLE `share_pic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shareId` int(11) NULL DEFAULT NULL COMMENT '动态id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES (1, 'http://127.0.0.1:7001/public/slider/slider_01.jpg', 'https://home.meishichina.com/event-497.html#hmsr=www&hmpl=index&hmcu=magic&hmkw=D1&hmci=87154');
INSERT INTO `slider` VALUES (2, 'http://127.0.0.1:7001/public/slider/slider_02.jpg', 'https://www.meishichina.com/mofang/zhongqiuyuebinggonglue/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D2&hmci=62240');
INSERT INTO `slider` VALUES (3, 'http://127.0.0.1:7001/public/slider/slider_03.jpg', 'https://www.meishichina.com/mofang/suofen/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D6&hmci=83977');
INSERT INTO `slider` VALUES (4, 'http://127.0.0.1:7001/public/slider/slider_04.jpg', 'https://www.meishichina.com/mofang/qingfeishiwu/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D3&hmci=89020');
INSERT INTO `slider` VALUES (5, 'http://127.0.0.1:7001/public/slider/slider_05.jpg', 'https://www.meishichina.com/mofang/mogudezuofadaquan/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D4&hmci=86243');
INSERT INTO `slider` VALUES (6, 'http://127.0.0.1:7001/public/slider/slider_06.jpg', 'https://www.meishichina.com/mofang/malaxiaolongxia/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D5&hmci=85191');

SET FOREIGN_KEY_CHECKS = 1;
