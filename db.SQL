CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2017-10-05 15:00:39.834594');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2017-10-05 15:00:39.894562');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2017-10-05 15:00:39.958721');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2017-10-05 15:00:40.007473');
INSERT INTO "django_migrations" VALUES(5,'contenttypes','0002_remove_content_type_name','2017-10-05 15:00:40.062152');
INSERT INTO "django_migrations" VALUES(6,'auth','0002_alter_permission_name_max_length','2017-10-05 15:00:40.138789');
INSERT INTO "django_migrations" VALUES(7,'auth','0003_alter_user_email_max_length','2017-10-05 15:00:40.209342');
INSERT INTO "django_migrations" VALUES(8,'auth','0004_alter_user_username_opts','2017-10-05 15:00:40.248277');
INSERT INTO "django_migrations" VALUES(9,'auth','0005_alter_user_last_login_null','2017-10-05 15:00:40.289385');
INSERT INTO "django_migrations" VALUES(10,'auth','0006_require_contenttypes_0002','2017-10-05 15:00:40.300630');
INSERT INTO "django_migrations" VALUES(11,'auth','0007_alter_validators_add_error_messages','2017-10-05 15:00:40.358330');
INSERT INTO "django_migrations" VALUES(12,'auth','0008_alter_user_username_max_length','2017-10-05 15:00:40.398103');
INSERT INTO "django_migrations" VALUES(13,'sessions','0001_initial','2017-10-05 15:00:40.459118');
INSERT INTO "django_migrations" VALUES(14,'mainsite','0001_initial','2017-10-06 00:30:27.862648');
INSERT INTO "django_migrations" VALUES(15,'mainsite','0002_product','2017-10-13 01:58:57.701421');
INSERT INTO "django_migrations" VALUES(16,'mainsite','0003_auto_20171013_0247','2017-10-13 02:47:58.355904');
INSERT INTO "django_migrations" VALUES(17,'mainsite','0004_product_qty','2017-10-13 05:43:29.613564');
INSERT INTO "django_migrations" VALUES(18,'mainsite','0005_domain','2017-10-16 08:55:49.500936');
INSERT INTO "django_migrations" VALUES(19,'mainsite','0006_auto_20171016_1349','2017-10-16 13:49:44.964021');
INSERT INTO "django_migrations" VALUES(20,'mainsite','0007_auto_20171017_0137','2017-10-17 01:37:47.315547');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO "django_admin_log" VALUES(1,'1','This is a first post',1,'[{"added": {}}]',7,1,'2017-10-06 00:41:09.657343');
INSERT INTO "django_admin_log" VALUES(2,'2','白居易《长恨歌》',1,'[{"added": {}}]',7,1,'2017-10-06 00:43:52.717861');
INSERT INTO "django_admin_log" VALUES(3,'3','李白《将进酒》',1,'[{"added": {}}]',7,1,'2017-10-06 00:45:52.638894');
INSERT INTO "django_admin_log" VALUES(4,'4','李白《春思》',1,'[{"added": {}}]',7,1,'2017-10-06 00:47:00.425418');
INSERT INTO "django_admin_log" VALUES(5,'5','李白《月下独醉》',1,'[{"added": {}}]',7,1,'2017-10-06 00:48:18.440844');
INSERT INTO "django_admin_log" VALUES(6,'6','杜甫《佳人》',1,'[{"added": {}}]',7,1,'2017-10-06 00:49:57.855900');
INSERT INTO "django_admin_log" VALUES(7,'1','This is a first post',3,'',7,1,'2017-10-06 00:50:17.558095');
INSERT INTO "django_admin_log" VALUES(8,'5','李白《月下独醉》',2,'[{"changed": {"fields": ["slug"]}}]',7,1,'2017-10-06 00:56:42.840458');
INSERT INTO "django_admin_log" VALUES(9,'2','白居易《长恨歌》',2,'[{"changed": {"fields": ["body"]}}]',7,1,'2017-10-06 01:00:05.423294');
INSERT INTO "django_admin_log" VALUES(10,'7','戴望舒 《雨巷》',1,'[{"added": {}}]',7,1,'2017-10-10 02:35:05.990390');
INSERT INTO "django_admin_log" VALUES(11,'1','Product object',2,'[]',8,1,'2017-10-13 02:52:54.834205');
INSERT INTO "django_admin_log" VALUES(12,'2','Product object',1,'[{"added": {}}]',8,1,'2017-10-13 02:53:10.814991');
INSERT INTO "django_admin_log" VALUES(13,'2','John',2,'[]',8,1,'2017-10-13 03:01:53.071057');
INSERT INTO "django_admin_log" VALUES(14,'3','Tom',1,'[{"added": {}}]',8,1,'2017-10-13 03:02:36.940803');
INSERT INTO "django_admin_log" VALUES(15,'4','Mary',1,'[{"added": {}}]',8,1,'2017-10-13 03:02:51.517317');
INSERT INTO "django_admin_log" VALUES(16,'5','huawei',1,'[{"added": {}}]',8,1,'2017-10-13 07:25:05.011091');
INSERT INTO "django_admin_log" VALUES(17,'1','基线半屏业务',1,'[{"added": {}}]',9,1,'2017-10-16 09:05:01.534076');
INSERT INTO "django_admin_log" VALUES(18,'1','基线半屏业务',2,'[]',9,1,'2017-10-16 09:05:08.114032');
INSERT INTO "django_admin_log" VALUES(19,'2','国广sso-scloud业务',1,'[{"added": {}}]',9,1,'2017-10-16 09:07:07.232281');
INSERT INTO "django_admin_log" VALUES(20,'1','111.206.212.239',1,'[{"added": {}}]',10,1,'2017-10-16 13:54:40.244827');
INSERT INTO "django_admin_log" VALUES(21,'2','36.110.197.209',1,'[{"added": {}}]',10,1,'2017-10-16 13:57:41.998895');
INSERT INTO "django_admin_log" VALUES(22,'3','36.110.197.207',1,'[{"added": {}}]',10,1,'2017-10-16 13:58:21.480115');
INSERT INTO "django_admin_log" VALUES(23,'4','123.59.177.209',1,'[{"added": {}}]',10,1,'2017-10-16 13:58:49.152778');
INSERT INTO "django_admin_log" VALUES(24,'5','123.59.177.199',1,'[{"added": {}}]',10,1,'2017-10-16 13:59:20.877968');
INSERT INTO "django_admin_log" VALUES(25,'6','123.125.38.19',1,'[{"added": {}}]',10,1,'2017-10-16 13:59:40.500256');
INSERT INTO "django_admin_log" VALUES(26,'7','123.125.38.248',1,'[{"added": {}}]',10,1,'2017-10-16 14:00:17.812534');
INSERT INTO "django_admin_log" VALUES(27,'1','111.206.212.239',2,'[{"changed": {"fields": ["description"]}}]',10,1,'2017-10-16 14:01:18.890949');
INSERT INTO "django_admin_log" VALUES(28,'8','36.110.223.251',1,'[{"added": {}}]',10,1,'2017-10-16 14:01:40.850307');
INSERT INTO "django_admin_log" VALUES(29,'9','123.59.122.228',1,'[{"added": {}}]',10,1,'2017-10-16 14:02:18.699520');
INSERT INTO "django_admin_log" VALUES(30,'3','互动业务',1,'[{"added": {}}]',9,1,'2017-10-16 14:07:08.499058');
INSERT INTO "django_admin_log" VALUES(31,'2','国广sso-scloud业务',2,'[]',9,1,'2017-10-16 14:07:19.710667');
INSERT INTO "django_admin_log" VALUES(32,'10','123.59.122.227',1,'[{"added": {}}]',10,1,'2017-10-16 14:08:02.737031');
INSERT INTO "django_admin_log" VALUES(33,'11','36.110.223.252',1,'[{"added": {}}]',10,1,'2017-10-16 14:08:16.681234');
INSERT INTO "django_admin_log" VALUES(34,'12','111.206.212.240',1,'[{"added": {}}]',10,1,'2017-10-16 14:08:35.317012');
INSERT INTO "django_admin_log" VALUES(35,'3','hd',2,'[{"changed": {"fields": ["service"]}}]',9,1,'2017-10-16 14:55:35.612848');
INSERT INTO "django_admin_log" VALUES(36,'2','scloud',2,'[{"changed": {"fields": ["service", "domain_url"]}}]',9,1,'2017-10-16 14:56:30.437122');
INSERT INTO "django_admin_log" VALUES(37,'2','scloud',2,'[]',9,1,'2017-10-16 14:56:38.992409');
INSERT INTO "django_admin_log" VALUES(38,'1','half-screen',2,'[{"changed": {"fields": ["service"]}}]',9,1,'2017-10-16 14:56:53.839875');
INSERT INTO "django_admin_log" VALUES(39,'3','hd',2,'[{"changed": {"fields": ["respone_way"]}}]',9,1,'2017-10-17 01:38:06.693778');
INSERT INTO "django_admin_log" VALUES(40,'2','scloud',2,'[{"changed": {"fields": ["respone_way"]}}]',9,1,'2017-10-17 01:38:14.764053');
INSERT INTO "django_admin_log" VALUES(41,'1','half-screen',2,'[{"changed": {"fields": ["respone_way"]}}]',9,1,'2017-10-17 01:38:20.388438');
INSERT INTO "django_admin_log" VALUES(42,'4','mobile_proxy',1,'[{"added": {}}]',9,1,'2017-10-17 06:35:59.083078');
INSERT INTO "django_admin_log" VALUES(43,'13','36.110.223.251',1,'[{"added": {}}]',10,1,'2017-10-17 06:36:26.631794');
INSERT INTO "django_admin_log" VALUES(44,'14','111.206.212.239',1,'[{"added": {}}]',10,1,'2017-10-17 06:36:47.853874');
INSERT INTO "django_admin_log" VALUES(45,'15','123.59.122.228',1,'[{"added": {}}]',10,1,'2017-10-17 06:37:09.506082');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','group');
INSERT INTO "django_content_type" VALUES(3,'auth','permission');
INSERT INTO "django_content_type" VALUES(4,'auth','user');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'mainsite','post');
INSERT INTO "django_content_type" VALUES(8,'mainsite','product');
INSERT INTO "django_content_type" VALUES(9,'mainsite','domain');
INSERT INTO "django_content_type" VALUES(10,'mainsite','domain_ip');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,2,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(5,2,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(6,2,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(7,3,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(8,3,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(9,3,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(10,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(11,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(12,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(16,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(17,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(18,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(19,7,'add_post','Can add post');
INSERT INTO "auth_permission" VALUES(20,7,'change_post','Can change post');
INSERT INTO "auth_permission" VALUES(21,7,'delete_post','Can delete post');
INSERT INTO "auth_permission" VALUES(22,8,'add_product','Can add product');
INSERT INTO "auth_permission" VALUES(23,8,'change_product','Can change product');
INSERT INTO "auth_permission" VALUES(24,8,'delete_product','Can delete product');
INSERT INTO "auth_permission" VALUES(25,9,'add_domain','Can add domain');
INSERT INTO "auth_permission" VALUES(26,9,'change_domain','Can change domain');
INSERT INTO "auth_permission" VALUES(27,9,'delete_domain','Can delete domain');
INSERT INTO "auth_permission" VALUES(28,10,'add_domain_ip','Can add domain_ip');
INSERT INTO "auth_permission" VALUES(29,10,'change_domain_ip','Can change domain_ip');
INSERT INTO "auth_permission" VALUES(30,10,'delete_domain_ip','Can delete domain_ip');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$36000$DnOECxobG302$DbP0vJJ4INaPGHCXIVQCoXDikFGLoWcILOzdizF64Ks=','2017-10-13 02:03:11.931073',1,'','','19483834@qq.com',1,1,'2017-10-06 00:32:10.384471','admin');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('0z4urc744i75176jw0f4lo9dzabedxnx','YjNlOGU5NmFlNWEzNzZiMzljZTdmNjkyODVhZDM5MzA2YmY5NjE5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhYWI4MTk5NzM5ZmQ4ZmY5YTg2NTRiYWNjZTk5NjhkMWNmMDI0NjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-10-27 02:03:11.957281');
CREATE TABLE "mainsite_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "slug" varchar(200) NOT NULL, "body" text NOT NULL, "pub_date" datetime NOT NULL);
INSERT INTO "mainsite_post" VALUES(2,'白居易《长恨歌》','1','汉皇重色思倾国，御宇多年求不得。
杨家有女初长成，养在深闺人未识。
天生丽质难自弃，一朝选在君王侧。
回眸一笑百媚生，六宫粉黛无颜色。
春寒赐浴华清池，温泉水滑洗凝脂。
侍儿扶起娇无力，始是新承恩泽时。
云鬓花颜金步摇，芙蓉帐暖度春宵。
春宵苦短日高起，从此君王不早朝。
承欢侍宴无闲暇，春从春游夜专夜。
后宫佳丽三千人，三千宠爱在一身。
金屋妆成娇侍夜，玉楼宴罢醉和春。
姊妹弟兄皆列土，可怜光彩生门户。
遂令天下父母心，不重生男重生女。
骊宫高处入青云，仙乐风飘处处闻。
缓歌谩舞凝丝竹，尽日君王看不足。
渔阳鼙鼓动地来，惊破霓裳羽衣曲。
九重城阙烟尘生，千乘万骑西南行。
翠华摇摇行复止，西出都门百余里。
六军不发无奈何，宛转蛾眉马前死。
花钿委地无人收，翠翘金雀玉搔头。
君王掩面救不得，回看血泪相和流。
黄埃散漫风萧索，云栈萦纡登剑阁。
峨嵋山下少人行，旌旗无光日色薄。
蜀江水碧蜀山青，圣主朝朝暮暮情。
行宫见月伤心色，夜雨闻铃肠断声。
天旋地转回龙驭，到此踌躇不能去。
马嵬坡下泥土中，不见玉颜空死处。
君臣相顾尽沾衣，东望都门信马归。
归来池苑皆依旧，太液芙蓉未央柳。
芙蓉如面柳如眉，对此如何不泪垂。
春风桃李花开日，秋雨梧桐叶落时。
西宫南内多秋草，落叶满阶红不扫。
梨园弟子白发新，椒房阿监青娥老。
夕殿萤飞思悄然，孤灯挑尽未成眠。
迟迟钟鼓初长夜，耿耿星河欲曙天。
鸳鸯瓦冷霜华重，翡翠衾寒谁与共。
悠悠生死别经年，魂魄不曾来入梦。
临邛道士鸿都客，能以精诚致魂魄。
为感君王辗转思，遂教方士殷勤觅。
排空驭气奔如电，升天入地求之遍。
上穷碧落下黄泉，两处茫茫皆不见。
忽闻海上有仙山，山在虚无缥渺间。
楼阁玲珑五云起，其中绰约多仙子。
中有一人字太真，雪肤花貌参差是。
金阙西厢叩玉扃，转教小玉报双成。
闻道汉家天子使，九华帐里梦魂惊。
揽衣推枕起徘徊，珠箔银屏迤逦开。
云鬓半偏新睡觉，花冠不整下堂来。
风吹仙袂飘飘举，犹似霓裳羽衣舞。
玉容寂寞泪阑干，梨花一枝春带雨。
含情凝睇谢君王，一别音容两渺茫。
昭阳殿里恩爱绝，蓬莱宫中日月长。
回头下望人寰处，不见长安见尘雾。
惟将旧物表深情，钿合金钗寄将去。
钗留一股合一扇，钗擘黄金合分钿。
但教心似金钿坚，天上人间会相见。
临别殷勤重寄词，词中有誓两心知。
七月七日长生殿，夜半无人私语时。
在天愿作比翼鸟，在地愿为连理枝。
天长地久有时尽，此恨绵绵无绝期。
白居易','2017-10-06 00:41:41');
INSERT INTO "mainsite_post" VALUES(3,'李白《将进酒》','2','君不见，黄河之水天上来⑵，奔流到海不复回。
君不见，高堂明镜悲白发，朝如青丝暮成雪⑶。
人生得意须尽欢⑷，莫使金樽空对月。
天生我材必有用，千金散尽还复来。
烹羊宰牛且为乐，会须一饮三百杯⑸。
岑夫子，丹丘生⑹，将进酒，杯莫停⑺。
与君歌一曲⑻，请君为我倾耳听⑼。
钟鼓馔玉不足贵⑽，但愿长醉不复醒⑾。
古来圣贤皆寂寞，惟有饮者留其名。
陈王昔时宴平乐，斗酒十千恣欢谑⑿。
主人何为言少钱⒀，径须沽取对君酌⒁。
五花马⒂，千金裘，呼儿将出换美酒，与尔同销万古愁⒃。','2017-10-06 00:44:00');
INSERT INTO "mainsite_post" VALUES(4,'李白《春思》','3','燕草如碧丝，秦桑低绿枝。
当君怀归日，是妾断肠时。 
春风不相识，何事入罗帏。','2017-10-06 00:46:00');
INSERT INTO "mainsite_post" VALUES(5,'李白《月下独醉》','4','浮云相赛遮明月，
月下影随风摇曳。
举杯畅饮独自醉，
谁来填满杯中月。','2017-10-06 00:47:09');
INSERT INTO "mainsite_post" VALUES(6,'杜甫《佳人》','5','绝代有佳人，幽居在空谷。
自云良家子，零落依草木。
关中昔丧败，兄弟遭杀戮。
官高何足论，不得收骨肉。
世情恶衰歇，万事随转烛。
夫婿轻薄儿，新人已如玉。
合昏尚知时，鸳鸯不独宿。
但见新人笑，那闻旧人哭。
在山泉水清，出山泉水浊。
侍婢卖珠回，牵萝补茅屋。
摘花不插发，采柏动盈掬。
天寒翠袖薄，日暮倚修竹。','2017-10-06 00:48:26');
INSERT INTO "mainsite_post" VALUES(7,'戴望舒 《雨巷》','6','撑着油纸伞，独自
彷徨在悠长，悠长
又寂寥的雨巷，
我希望逢着
一个丁香一样的
结着愁怨的姑娘。
她是有
丁香一样的颜色，
丁香一样的芬芳，
丁香一样的忧愁，
在雨中哀怨，
哀怨又彷徨；
她彷徨在这寂寥的雨巷，
撑着油纸伞
像我一样，
像我一样地
默默彳亍①着，
冷漠，凄清，又惆怅②。
她静默地走近
走近，又投出
太息③一般的眼光，
她飘过
像梦一般的，
像梦一般的凄婉迷茫。
像梦中飘过
一枝丁香的，
我身旁飘过这女郎；
她静默地远了，远了，
到了颓圮④的篱墙，
走尽这雨巷。
在雨的哀曲里，
消了她的颜色，
散了她的芬芳
消散了，甚至她的
太息般的眼光，
丁香般的惆怅④。
撑着油纸伞，独自
彷徨在悠长，悠长
又寂寥的雨巷，
我希望飘过
一个丁香一样的
结着愁怨的姑娘。','2017-10-10 02:33:20');
CREATE TABLE "mainsite_product" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "sku" varchar(5) NOT NULL, "name" varchar(20) NOT NULL, "price" integer unsigned NOT NULL, "size" varchar(1) NOT NULL, "qty" integer unsigned NOT NULL);
INSERT INTO "mainsite_product" VALUES(1,'1','GrayBox',100,'S',2);
INSERT INTO "mainsite_product" VALUES(2,'2','John',2,'M',2);
INSERT INTO "mainsite_product" VALUES(3,'3','Tom',60,'L',2);
INSERT INTO "mainsite_product" VALUES(4,'4','Mary',345,'L',2);
INSERT INTO "mainsite_product" VALUES(5,'5','huawei',2300,'M',45);
CREATE TABLE "mainsite_domain_ip" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "ip" varchar(100) NOT NULL, "description" varchar(100) NOT NULL, "encode_id" integer NOT NULL REFERENCES "mainsite_domain" ("id"));
INSERT INTO "mainsite_domain_ip" VALUES(1,'111.206.212.239','中国北京联通',1);
INSERT INTO "mainsite_domain_ip" VALUES(2,'36.110.197.209','中国北京电信',2);
INSERT INTO "mainsite_domain_ip" VALUES(3,'36.110.197.207','中国北京电信',2);
INSERT INTO "mainsite_domain_ip" VALUES(4,'123.59.177.209','中国北京联通/电信/科技网',2);
INSERT INTO "mainsite_domain_ip" VALUES(5,'123.59.177.199','中国北京联通/电信/科技网',2);
INSERT INTO "mainsite_domain_ip" VALUES(6,'123.125.38.19','中国北京联通',2);
INSERT INTO "mainsite_domain_ip" VALUES(7,'123.125.38.248','中国北京联通',2);
INSERT INTO "mainsite_domain_ip" VALUES(8,'36.110.223.251','中国北京电信',1);
INSERT INTO "mainsite_domain_ip" VALUES(9,'123.59.122.228','中国北京电信',1);
INSERT INTO "mainsite_domain_ip" VALUES(10,'123.59.122.227','BGP',3);
INSERT INTO "mainsite_domain_ip" VALUES(11,'36.110.223.252','电信',3);
INSERT INTO "mainsite_domain_ip" VALUES(12,'111.206.212.240','联通',3);
INSERT INTO "mainsite_domain_ip" VALUES(13,'36.110.223.251','中国北京电信',4);
INSERT INTO "mainsite_domain_ip" VALUES(14,'111.206.212.239','中国北京联通',4);
INSERT INTO "mainsite_domain_ip" VALUES(15,'123.59.122.228','中国北京电信',4);
CREATE TABLE "mainsite_domain" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "service" varchar(200) NOT NULL, "domain" varchar(100) NOT NULL, "domain_vip" varchar(100) NOT NULL, "domain_url" varchar(200) NOT NULL, "encode" varchar(10) NOT NULL, "respone_way" varchar(5) NOT NULL);
INSERT INTO "mainsite_domain" VALUES(1,'half-screen','api.mob.app.letv.com','111.206.212.239','/','1','Http');
INSERT INTO "mainsite_domain" VALUES(2,'scloud','accounts-scloud.cp21.ott.cibntv.net','123.59.177.209','iptv/api/user/loginWithMac?version=V2401RCN02C060254D0 7281D&versionName=6.0.254D_0728&model=X455&ui=6.0&hwVersion=H5000&mac=c80e77fa7abe&region=CN&user-prefer-language=zh-cn','1','Https');
INSERT INTO "mainsite_domain" VALUES(3,'hd','api.my.letv.com','123.59.177.209','/','/','Http');
INSERT INTO "mainsite_domain" VALUES(4,'mobile_proxy','dynamic.app.m.letv.com','36.110.223.251','android/dynamic.php?mod=minfo&ctl=cloud&act=import&pcode=010510000&version=6.1.1&lang=chs&region=CN','/','Http');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',20);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',45);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',10);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',30);
INSERT INTO "sqlite_sequence" VALUES('auth_user',1);
INSERT INTO "sqlite_sequence" VALUES('mainsite_post',7);
INSERT INTO "sqlite_sequence" VALUES('mainsite_product',5);
INSERT INTO "sqlite_sequence" VALUES('mainsite_domain_ip',15);
INSERT INTO "sqlite_sequence" VALUES('mainsite_domain',4);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "mainsite_domain_ip_encode_id_93532dd8" ON "mainsite_domain_ip" ("encode_id");
COMMIT;
