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

 Date: 07/10/2020 17:27:53
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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
-- Table structure for myshare
-- ----------------------------
DROP TABLE IF EXISTS `myshare`;
CREATE TABLE `myshare`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL COMMENT '发表用户',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '动态内容',
  `prodate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发表时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myshare
-- ----------------------------
INSERT INTO `myshare` VALUES (1, 1, '假日', '水煮千张', '2020-10-4');
INSERT INTO `myshare` VALUES (2, 3, NULL, '#早餐#各式点心', '2020-10-5');

-- ----------------------------
-- Table structure for myshare_pic
-- ----------------------------
DROP TABLE IF EXISTS `myshare_pic`;
CREATE TABLE `myshare_pic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shareId` int(11) NULL DEFAULT NULL COMMENT '动态id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myshare_pic
-- ----------------------------
INSERT INTO `myshare_pic` VALUES (1, 1, 'http://127.0.0.1:7001/public/share/1.jpg');
INSERT INTO `myshare_pic` VALUES (2, 2, 'http://127.0.0.1:7001/public/share/2.jpg');
INSERT INTO `myshare_pic` VALUES (3, 2, 'http://127.0.0.1:7001/public/share/3.jpg');
INSERT INTO `myshare_pic` VALUES (4, 2, 'http://127.0.0.1:7001/public/share/4.jpg');
INSERT INTO `myshare_pic` VALUES (5, 2, 'http://127.0.0.1:7001/public/share/5.jpg');

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

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `part` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分区名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 267 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '热菜', '常见菜式');
INSERT INTO `types` VALUES (2, '凉菜', '常见菜式');
INSERT INTO `types` VALUES (3, '汤羹', '常见菜式');
INSERT INTO `types` VALUES (4, '主食', '常见菜式');
INSERT INTO `types` VALUES (5, '小吃', '常见菜式');
INSERT INTO `types` VALUES (6, '家常菜', '常见菜式');
INSERT INTO `types` VALUES (7, '泡酱腌菜', '常见菜式');
INSERT INTO `types` VALUES (8, '西餐', '常见菜式');
INSERT INTO `types` VALUES (9, '烘焙', '常见菜式');
INSERT INTO `types` VALUES (10, '烤箱菜', '常见菜式');
INSERT INTO `types` VALUES (11, '饮品', '常见菜式');
INSERT INTO `types` VALUES (12, '零食', '常见菜式');
INSERT INTO `types` VALUES (13, '火锅', '常见菜式');
INSERT INTO `types` VALUES (14, '自制食材', '常见菜式');
INSERT INTO `types` VALUES (15, '海鲜', '常见菜式');
INSERT INTO `types` VALUES (16, '宴客菜', '常见菜式');
INSERT INTO `types` VALUES (17, '米饭', '主食/小吃');
INSERT INTO `types` VALUES (18, '炒饭', '主食/小吃');
INSERT INTO `types` VALUES (19, '面食', '主食/小吃');
INSERT INTO `types` VALUES (20, '包子', '主食/小吃');
INSERT INTO `types` VALUES (21, '饺子', '主食/小吃');
INSERT INTO `types` VALUES (22, '馒头花卷', '主食/小吃');
INSERT INTO `types` VALUES (23, '面条', '主食/小吃');
INSERT INTO `types` VALUES (24, '饼', '主食/小吃');
INSERT INTO `types` VALUES (25, '粥', '主食/小吃');
INSERT INTO `types` VALUES (26, '混沌', '主食/小吃');
INSERT INTO `types` VALUES (27, '五谷杂粮', '主食/小吃');
INSERT INTO `types` VALUES (28, '北京小吃', '主食/小吃');
INSERT INTO `types` VALUES (29, '陕西小吃', '主食/小吃');
INSERT INTO `types` VALUES (30, '广东小吃', '主食/小吃');
INSERT INTO `types` VALUES (31, '四川小吃', '主食/小吃');
INSERT INTO `types` VALUES (32, '重庆小吃', '主食/小吃');
INSERT INTO `types` VALUES (33, '天津小吃', '主食/小吃');
INSERT INTO `types` VALUES (34, '上海小吃', '主食/小吃');
INSERT INTO `types` VALUES (35, '福建小吃', '主食/小吃');
INSERT INTO `types` VALUES (36, '湖南小吃', '主食/小吃');
INSERT INTO `types` VALUES (37, '湖北小吃', '主食/小吃');
INSERT INTO `types` VALUES (38, '江西小吃', '主食/小吃');
INSERT INTO `types` VALUES (39, '山东小吃', '主食/小吃');
INSERT INTO `types` VALUES (40, '山西小吃', '主食/小吃');
INSERT INTO `types` VALUES (41, '河南小吃', '主食/小吃');
INSERT INTO `types` VALUES (42, '台湾小吃', '主食/小吃');
INSERT INTO `types` VALUES (43, '江浙小吃', '主食/小吃');
INSERT INTO `types` VALUES (44, '云贵小吃', '主食/小吃');
INSERT INTO `types` VALUES (45, '东北小吃', '主食/小吃');
INSERT INTO `types` VALUES (46, '西北小吃', '主食/小吃');
INSERT INTO `types` VALUES (47, '甜品', '甜品/饮品');
INSERT INTO `types` VALUES (48, '冰品', '甜品/饮品');
INSERT INTO `types` VALUES (49, '果汁', '甜品/饮品');
INSERT INTO `types` VALUES (50, '糖水', '甜品/饮品');
INSERT INTO `types` VALUES (51, '布丁', '甜品/饮品');
INSERT INTO `types` VALUES (52, '果酱', '甜品/饮品');
INSERT INTO `types` VALUES (53, '果冻', '甜品/饮品');
INSERT INTO `types` VALUES (54, '酸奶', '甜品/饮品');
INSERT INTO `types` VALUES (55, '鸡尾酒', '甜品/饮品');
INSERT INTO `types` VALUES (56, '咖啡', '甜品/饮品');
INSERT INTO `types` VALUES (57, '豆浆', '甜品/饮品');
INSERT INTO `types` VALUES (58, '奶昔', '甜品/饮品');
INSERT INTO `types` VALUES (59, '冰淇淋', '甜品/饮品');
INSERT INTO `types` VALUES (60, '孕妇', '适宜人群');
INSERT INTO `types` VALUES (61, '产妇', '适宜人群');
INSERT INTO `types` VALUES (62, '婴儿', '适宜人群');
INSERT INTO `types` VALUES (63, '儿童', '适宜人群');
INSERT INTO `types` VALUES (64, '老人', '适宜人群');
INSERT INTO `types` VALUES (65, '幼儿', '适宜人群');
INSERT INTO `types` VALUES (66, '哺乳期', '适宜人群');
INSERT INTO `types` VALUES (67, '青少年', '适宜人群');
INSERT INTO `types` VALUES (68, '健康食谱', '食疗食补');
INSERT INTO `types` VALUES (69, '减肥瘦身', '食疗食补');
INSERT INTO `types` VALUES (70, '贫血', '食疗食补');
INSERT INTO `types` VALUES (71, '痛经', '食疗食补');
INSERT INTO `types` VALUES (72, '清热祛火', '食疗食补');
INSERT INTO `types` VALUES (73, '滋阴', '食疗食补');
INSERT INTO `types` VALUES (74, '壮阳', '食疗食补');
INSERT INTO `types` VALUES (75, '便秘', '食疗食补');
INSERT INTO `types` VALUES (76, '排毒养颜', '食疗食补');
INSERT INTO `types` VALUES (77, '滋润补水', '食疗食补');
INSERT INTO `types` VALUES (78, '健脾养胃', '食疗食补');
INSERT INTO `types` VALUES (79, '护肝明目', '食疗食补');
INSERT INTO `types` VALUES (80, '清肺止咳', '食疗食补');
INSERT INTO `types` VALUES (81, '下奶', '食疗食补');
INSERT INTO `types` VALUES (82, '补钙', '食疗食补');
INSERT INTO `types` VALUES (83, '醒酒', '食疗食补');
INSERT INTO `types` VALUES (84, '抗过敏', '食疗食补');
INSERT INTO `types` VALUES (85, '防辐射', '食疗食补');
INSERT INTO `types` VALUES (86, '提高免疫力', '食疗食补');
INSERT INTO `types` VALUES (87, '流感', '食疗食补');
INSERT INTO `types` VALUES (88, '驱寒暖身', '食疗食补');
INSERT INTO `types` VALUES (89, '秋冬进补', '食疗食补');
INSERT INTO `types` VALUES (90, '消暑解渴', '食疗食补');
INSERT INTO `types` VALUES (91, '早餐', '场景');
INSERT INTO `types` VALUES (92, '下午茶', '场景');
INSERT INTO `types` VALUES (93, '二人世界', '场景');
INSERT INTO `types` VALUES (94, '野餐', '场景');
INSERT INTO `types` VALUES (95, '开胃菜', '场景');
INSERT INTO `types` VALUES (96, '私房菜', '场景');
INSERT INTO `types` VALUES (97, '快餐', '场景');
INSERT INTO `types` VALUES (98, '快手菜', '场景');
INSERT INTO `types` VALUES (99, '宿舍时代', '场景');
INSERT INTO `types` VALUES (100, '中式宴请', '场景');
INSERT INTO `types` VALUES (101, '西式宴请', '场景');
INSERT INTO `types` VALUES (102, '素食', '饮食方式');
INSERT INTO `types` VALUES (103, '素菜', '饮食方式');
INSERT INTO `types` VALUES (104, '清真菜', '饮食方式');
INSERT INTO `types` VALUES (105, '春季食谱', '饮食方式');
INSERT INTO `types` VALUES (106, '夏季食谱', '饮食方式');
INSERT INTO `types` VALUES (107, '秋季食谱', '饮食方式');
INSERT INTO `types` VALUES (108, '冬季食谱', '饮食方式');
INSERT INTO `types` VALUES (109, '小清晰', '饮食方式');
INSERT INTO `types` VALUES (110, '高颜值', '饮食方式');
INSERT INTO `types` VALUES (111, '蛋糕', '烘焙');
INSERT INTO `types` VALUES (112, '面包', '烘焙');
INSERT INTO `types` VALUES (113, '饼干', '烘焙');
INSERT INTO `types` VALUES (114, '派塔', '烘焙');
INSERT INTO `types` VALUES (115, '吐司', '烘焙');
INSERT INTO `types` VALUES (116, '戚风蛋糕', '烘焙');
INSERT INTO `types` VALUES (117, '纸杯蛋糕', '烘焙');
INSERT INTO `types` VALUES (118, '蛋糕卷', '烘焙');
INSERT INTO `types` VALUES (119, '玛芬蛋糕', '烘焙');
INSERT INTO `types` VALUES (120, '乳酪蛋糕', '烘焙');
INSERT INTO `types` VALUES (121, '芝士蛋糕', '烘焙');
INSERT INTO `types` VALUES (122, '奶油蛋糕', '烘焙');
INSERT INTO `types` VALUES (123, '披萨', '烘焙');
INSERT INTO `types` VALUES (124, '慕斯', '烘焙');
INSERT INTO `types` VALUES (125, '曲奇', '烘焙');
INSERT INTO `types` VALUES (126, '翻糖', '烘焙');
INSERT INTO `types` VALUES (127, '粽子', '传统美食');
INSERT INTO `types` VALUES (128, '月饼', '传统美食');
INSERT INTO `types` VALUES (129, '春饼', '传统美食');
INSERT INTO `types` VALUES (130, '元宵', '传统美食');
INSERT INTO `types` VALUES (131, '汤圆', '传统美食');
INSERT INTO `types` VALUES (132, '青团', '传统美食');
INSERT INTO `types` VALUES (133, '腊八粥', '传统美食');
INSERT INTO `types` VALUES (134, '春卷', '传统美食');
INSERT INTO `types` VALUES (136, '立冬', '节日食俗');
INSERT INTO `types` VALUES (137, '冬至', '节日食俗');
INSERT INTO `types` VALUES (138, '腊八', '节日食俗');
INSERT INTO `types` VALUES (139, '端午节', '节日食俗');
INSERT INTO `types` VALUES (140, '中秋', '节日食俗');
INSERT INTO `types` VALUES (141, '立春', '节日食俗');
INSERT INTO `types` VALUES (142, '元宵节', '节日食俗');
INSERT INTO `types` VALUES (143, '贴秋膘', '节日食俗');
INSERT INTO `types` VALUES (144, '清明', '节日食俗');
INSERT INTO `types` VALUES (145, '年夜饭', '节日食俗');
INSERT INTO `types` VALUES (146, '圣诞节', '节日食俗');
INSERT INTO `types` VALUES (147, '感恩节', '节日食俗');
INSERT INTO `types` VALUES (148, '万圣节', '节日食俗');
INSERT INTO `types` VALUES (149, '情人节', '节日食俗');
INSERT INTO `types` VALUES (150, '复活节', '节日食俗');
INSERT INTO `types` VALUES (151, '雨水', '节日食俗');
INSERT INTO `types` VALUES (152, '惊蛰', '节日食俗');
INSERT INTO `types` VALUES (153, '春分', '节日食俗');
INSERT INTO `types` VALUES (154, '谷雨', '节日食俗');
INSERT INTO `types` VALUES (155, '立夏', '节日食俗');
INSERT INTO `types` VALUES (156, '小满', '节日食俗');
INSERT INTO `types` VALUES (157, '芒种', '节日食俗');
INSERT INTO `types` VALUES (158, '夏至', '节日食俗');
INSERT INTO `types` VALUES (159, '小暑', '节日食俗');
INSERT INTO `types` VALUES (160, '大暑', '节日食俗');
INSERT INTO `types` VALUES (161, '立秋', '节日食俗');
INSERT INTO `types` VALUES (162, '处暑', '节日食俗');
INSERT INTO `types` VALUES (163, '白露', '节日食俗');
INSERT INTO `types` VALUES (164, '秋分', '节日食俗');
INSERT INTO `types` VALUES (165, '寒露', '节日食俗');
INSERT INTO `types` VALUES (166, '霜降', '节日食俗');
INSERT INTO `types` VALUES (167, '小雪', '节日食俗');
INSERT INTO `types` VALUES (168, '大雪', '节日食俗');
INSERT INTO `types` VALUES (169, '小寒', '节日食俗');
INSERT INTO `types` VALUES (170, '大寒', '节日食俗');
INSERT INTO `types` VALUES (171, '二月二', '节日食俗');
INSERT INTO `types` VALUES (172, '母亲节', '节日食俗');
INSERT INTO `types` VALUES (173, '父亲节', '节日食俗');
INSERT INTO `types` VALUES (174, '儿童节', '节日食俗');
INSERT INTO `types` VALUES (175, '七夕', '节日食俗');
INSERT INTO `types` VALUES (176, '重阳节', '节日食俗');
INSERT INTO `types` VALUES (177, '十分钟', '按所需时间');
INSERT INTO `types` VALUES (178, '廿分钟', '按所需时间');
INSERT INTO `types` VALUES (179, '半小时', '按所需时间');
INSERT INTO `types` VALUES (180, '三刻钟', '按所需时间');
INSERT INTO `types` VALUES (181, '—小时', '按所需时间');
INSERT INTO `types` VALUES (182, '数小时', '按所需时间');
INSERT INTO `types` VALUES (183, '一天', '按所需时间');
INSERT INTO `types` VALUES (184, '数天', '按所需时间');
INSERT INTO `types` VALUES (185, '微辣', '按菜品口味');
INSERT INTO `types` VALUES (186, '中辣', '按菜品口味');
INSERT INTO `types` VALUES (187, '超辣', '按菜品口味');
INSERT INTO `types` VALUES (188, '麻辣', '按菜品口味');
INSERT INTO `types` VALUES (189, '酸辣', '按菜品口味');
INSERT INTO `types` VALUES (190, '甜辣', '按菜品口味');
INSERT INTO `types` VALUES (191, '香辣', '按菜品口味');
INSERT INTO `types` VALUES (203, '酸甜', '按菜品口味');
INSERT INTO `types` VALUES (204, '酸咸', '按菜品口味');
INSERT INTO `types` VALUES (205, '咸鲜', '按菜品口味');
INSERT INTO `types` VALUES (206, '咸甜', '按菜品口味');
INSERT INTO `types` VALUES (207, '甜味', '按菜品口味');
INSERT INTO `types` VALUES (208, '苦味', '按菜品口味');
INSERT INTO `types` VALUES (209, '原味', '按菜品口味');
INSERT INTO `types` VALUES (210, '清淡', '按菜品口味');
INSERT INTO `types` VALUES (211, '五香', '按菜品口味');
INSERT INTO `types` VALUES (212, '鱼香', '按菜品口味');
INSERT INTO `types` VALUES (213, '葱香', '按菜品口味');
INSERT INTO `types` VALUES (214, '蒜香', '按菜品口味');
INSERT INTO `types` VALUES (215, '奶香', '按菜品口味');
INSERT INTO `types` VALUES (216, '酱香', '按菜品口味');
INSERT INTO `types` VALUES (217, '糟香', '按菜品口味');
INSERT INTO `types` VALUES (218, '咖喱', '按菜品口味');
INSERT INTO `types` VALUES (219, '孜然', '按菜品口味');
INSERT INTO `types` VALUES (220, '果味', '按菜品口味');
INSERT INTO `types` VALUES (221, '香草', '按菜品口味');
INSERT INTO `types` VALUES (222, '怪味', '按菜品口味');
INSERT INTO `types` VALUES (223, '咸香', '按菜品口味');
INSERT INTO `types` VALUES (224, '甜香', '按菜品口味');
INSERT INTO `types` VALUES (225, '麻香', '按菜品口味');
INSERT INTO `types` VALUES (226, '其他', '按菜品口味');
INSERT INTO `types` VALUES (227, '烧', '按主要工艺');
INSERT INTO `types` VALUES (228, '炒', '按主要工艺');
INSERT INTO `types` VALUES (229, '爆', '按主要工艺');
INSERT INTO `types` VALUES (230, '焖', '按主要工艺');
INSERT INTO `types` VALUES (231, '炖', '按主要工艺');
INSERT INTO `types` VALUES (232, '蒸', '按主要工艺');
INSERT INTO `types` VALUES (233, '煮', '按主要工艺');
INSERT INTO `types` VALUES (234, '拌', '按主要工艺');
INSERT INTO `types` VALUES (235, '烤', '按主要工艺');
INSERT INTO `types` VALUES (236, '炸', '按主要工艺');
INSERT INTO `types` VALUES (237, '烩', '按主要工艺');
INSERT INTO `types` VALUES (238, '溜', '按主要工艺');
INSERT INTO `types` VALUES (239, '余', '按主要工艺');
INSERT INTO `types` VALUES (240, '腌', '按主要工艺');
INSERT INTO `types` VALUES (241, '卤', '按主要工艺');
INSERT INTO `types` VALUES (242, '怆', '按主要工艺');
INSERT INTO `types` VALUES (243, '煎', '按主要工艺');
INSERT INTO `types` VALUES (244, '酥', '按主要工艺');
INSERT INTO `types` VALUES (245, '扒', '按主要工艺');
INSERT INTO `types` VALUES (246, '熏', '按主要工艺');
INSERT INTO `types` VALUES (247, '煨', '按主要工艺');
INSERT INTO `types` VALUES (248, '酱', '按主要工艺');
INSERT INTO `types` VALUES (249, '煲', '按主要工艺');
INSERT INTO `types` VALUES (250, '烘焙', '按主要工艺');
INSERT INTO `types` VALUES (251, '火锅', '按主要工艺');
INSERT INTO `types` VALUES (252, '砂锅', '按主要工艺');
INSERT INTO `types` VALUES (253, '拔丝', '按主要工艺');
INSERT INTO `types` VALUES (254, '生鲜', '按主要工艺');
INSERT INTO `types` VALUES (255, '调味', '按主要工艺');
INSERT INTO `types` VALUES (256, '技巧', '按主要工艺');
INSERT INTO `types` VALUES (257, '烙', '按主要工艺');
INSERT INTO `types` VALUES (258, '榨汁', '按主要工艺');
INSERT INTO `types` VALUES (259, '冷冻', '按主要工艺');
INSERT INTO `types` VALUES (260, '焗', '按主要工艺');
INSERT INTO `types` VALUES (261, '焯', '按主要工艺');
INSERT INTO `types` VALUES (262, '干煽', '按主要工艺');
INSERT INTO `types` VALUES (263, '干锅', '按主要工艺');
INSERT INTO `types` VALUES (264, '铁板', '按主要工艺');
INSERT INTO `types` VALUES (265, '微波', '按主要工艺');
INSERT INTO `types` VALUES (266, '其他', '按主要工艺');

-- ----------------------------
-- Table structure for types_food
-- ----------------------------
DROP TABLE IF EXISTS `types_food`;
CREATE TABLE `types_food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eatablesId` int(11) NULL DEFAULT NULL COMMENT '菜谱 id',
  `typesId` int(11) NULL DEFAULT NULL COMMENT '分类 id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of types_food
-- ----------------------------
INSERT INTO `types_food` VALUES (1, 1, 1);
INSERT INTO `types_food` VALUES (2, 2, 1);
INSERT INTO `types_food` VALUES (3, 3, 1);
INSERT INTO `types_food` VALUES (4, 4, 1);
INSERT INTO `types_food` VALUES (5, 5, 1);
INSERT INTO `types_food` VALUES (6, 6, 1);
INSERT INTO `types_food` VALUES (7, 7, 1);
INSERT INTO `types_food` VALUES (8, 8, 1);
INSERT INTO `types_food` VALUES (9, 9, 1);
INSERT INTO `types_food` VALUES (10, 10, 1);
INSERT INTO `types_food` VALUES (11, 11, 1);
INSERT INTO `types_food` VALUES (12, 12, 1);
INSERT INTO `types_food` VALUES (13, 13, 1);
INSERT INTO `types_food` VALUES (14, 14, 1);
INSERT INTO `types_food` VALUES (15, 15, 1);
INSERT INTO `types_food` VALUES (16, 16, 1);

SET FOREIGN_KEY_CHECKS = 1;
