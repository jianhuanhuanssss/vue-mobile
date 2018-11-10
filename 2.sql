#db.sql
SET NAMES UTF8;
DROP DATABASE IF EXISTS mafengwo;
CREATE DATABASE mafengwo CHARSET=utf8;
USE mafengwo;
CREATE TABLE mafengwo_imagelist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(50)
);
INSERT INTO mafengwo_imagelist VALUES(null,"http://127.0.0.1:8080/img/1.jpeg","图片1");
INSERT INTO mafengwo_imagelist VALUES(null,"http://127.0.0.1:8080/img/2.jpeg","图片2");
INSERT INTO mafengwo_imagelist VALUES(null,"http://127.0.0.1:8080/img/3.jpeg","图片3");


CREATE TABLE mfo_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    user_pho  VARCHAR(255),
);
INSERT INTO xs_user VALUES(null,'还不是因为我聪明',123456,"http://127.0.0.1:8080/img/p1.jpeg");
INSERT INTO xs_user VALUES(null,'intocity','456788',"http://127.0.0.1:3000/img/p2.jpeg");
INSERT INTO xs_user VALUES(null,'Elameh','xixi123',"http://127.0.0.1:8080/img/p3.jpeg");




INSERT INTO mfo_user VALUES(null,'alittle','xixi123',"http://127.0.0.1:8080/img/wKgBEFpDJDKAP6keAABRMNmmQGE14.jpeg");
INSERT INTO mfo_user VALUES(null,'艾特ATN','xixi123',"http://127.0.0.1:3000/img/wKgBEFqNmjqAPnDcAABJ59aTcac89.jpeg");
INSERT INTO mfo_user VALUES(null,'辣椒','xixi123',"http://127.0.0.1:8080/img/wKgBEFrDg8eATp36AADAOUNodrE95.jpeg");
INSERT INTO mfo_user VALUES(null,'椰子姑娘','xixi123',"http://127.0.0.1:8080/img/wKgBZ1nvA8SAL045AAF16s_40JM03.jpeg");
INSERT INTO mfo_user VALUES(null,'敏华爱美丽','xixi123',"http://127.0.0.1:8080/img/wKgBs1cjJJuAHvFYAALbDJgq05w09.jpeg");
INSERT INTO mfo_user VALUES(null,'我的旅行小马甲','xixi123',"http://127.0.0.1:8080/img/wKgBs1dvxcqAdWqwAA73u7PkEHw09.jpeg");
INSERT INTO mfo_user VALUES(null,'飞扬Devin','xixi123',"http://127.0.0.1:8080/img/wKgIC1pB_OmAHFHgAAIm2jrvKsc48.jpeg");


CREATE TABLE mfw_news(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    content VARCHAR(2000),
    pho  VARCHAR(2000),
    looked VARCHAR(255),
    nid  INT ,
);
INSERT INTO mfw_news VALUES(null,'我为枫叶，越岭而来，却只得一片丹青水墨——婺源','婺源，是很多人心中的温柔乡，青山绿水，望而动衷。

而这秋日里，缭雾缥缈，高高的枫叶树尖，首映日光而摇曳。

我为枫叶，越岭而来，却只得了秋雨与浓雾。

在蚂蜂窝上又沉寂了好些时候，工作、学习让半年时间过得匆忙。不过旅行实在是缺不得，它提示我们在日复一日的琐碎生活外，还有一个博大美好的存在，可以抚慰我们的身体和心灵。

至于此行的目的地，早就听闻婺源秋色动人，迷人的光线，光影斑驳中的古老红枫，高大的山峰中点点秋色的点缀，白墙黒瓦中的袅袅炊烟，想来便让人神往了。
       
好在婺源离我...','http://127.0.0.1:3000/img/b1.png','58442浏览',1);
INSERT INTO mfw_news VALUES(null,' 超多干货 |去毛里求斯避暑吧，毛求玩法最全攻略！','这里有令人心醉的蓝天碧海、阳光沙滩。同时，大海以外的精彩，一样不容错过。只要你来，就一定会找到爱上它的理由。','http://127.0.0.1:3000/img/wKgED1vCnbyAbHuVAAVjlsLh9y896.jpeg','2326062浏览',2);
INSERT INTO mfw_news VALUES(null,'新西兰把九月的好天气都给了我','第一次来重庆，这些景点得去！','http://127.0.0.1:3000/img/wKgBs1frZvOAK6KvAAFSPPY3orc45.jpeg','25浏览',3);






INSERT INTO mfw_news VALUES(null,' 糖糖和程程的台湾环岛记（超多Tips,入台前必看）','糖糖，天蝎女，混设计圈的。作为一个有着少女心的老阿姨，从小就有湾湾情节。小学的时候就开始听蔡依林周杰伦SHE，各种 台湾 偶像剧也是贯穿了整个青春期 程程，摩羯男，混艺术圈的。未来画家、博物馆控、手办控、爬宠控、草缸控、极限运动爱好者。他此次 台湾 行的最大愿望就是去 台北 故宫。 台湾 旅游资源还是挺丰富的，人文，自然，美食。去一趟还是非常值得的。 下面先放一些图镇一镇 1.两证一签 台湾 通行证和G签在所在城市的出入境办理，入台证找某宝百程旅行办的，158/人。入台证稍微麻烦一点，所需材料客服都会发给你，建议提前','http://127.0.0.1:3000/img/wKgBEFqLjNGAM5jXAAlAzUFTxMI08.jpeg','12976浏览',4);
INSERT INTO mfw_news VALUES(null,'你说的仙境 我终于等到 （哈尔滨-雪乡-雾凇岛六日游','作为从小生活在 上海 的南方姑娘，对下雪是既陌生又向往。毕竟在 上海 ，下雪的时候太少了，就算下雪，那零星的小雪也根本满足不了我想要在雪地里躺成大字型的心愿。 于是这个冬天，我约上了大学室友，一起踏上了 东北 之旅，去领略冬日的北国风光。 郑重向大家介绍此次我的旅行伙伴：，就是上图⬆️这位女子啦。我亲切的称她为室长，源于她是我大学时候宿舍的室长（貌似当年是石头剪刀布决定的吧）。在零下二三十度的环境里，还好有室长和我一起抵御寒冷。笔芯❤️ 关于我：刚毕业一年的93 上海 妹纸一枚，外企车企“打工仔”。每年的15','http://127.0.0.1:3000/img/wKgBZ1hyQJ2AEjxcAAPuThoVrEY72.jpeg','55135浏览',5);
INSERT INTO mfw_news VALUES(null,'愿有人陪你颠沛流离，愿有人陪你看尽苍山洱海——6年之后二刷大理，洱海整治，却更加感受到海边宁静',' 这篇游记其实是带家人一起来玩的 但是由于一些因素就不发她们的照片了 先来个自我介绍吧😄 我是辣椒，喜欢玩，喜欢旅行，最理想的职业是旅行体验师，爱拍照，喜欢一切美的事物 💕关于大理 在我第一次12年游 大理 的时候，我觉得很美很舒服，特别适合带家人一起旅游都地方，特别适合放空心情，发呆，感受大自然，和当地文化。 当时是去了 大理 ， 丽江 和 香格里拉 ，相对来说 大理 更让我觉得舒服，那里都茶马古道，鱼鹰表演，海上泛舟，都让我记忆犹新，于是这一次，6年，再次去 大理 ，发现完全是不一样的感觉。很多地方，都快不认识了','http://127.0.0.1:3000/img/wKgBEFsLkoGAHcbIAApoa_DSG0c85.jpeg','89601浏览',6);
INSERT INTO mfw_news VALUES(null,'从芬兰追极光，开始我们一辈子的蜜月旅行',' 对我而言，一场真正完美的婚礼，并不需要钻戒，花童，定制婚纱，只想和你一起，去一个陌生的国家，一起走一条好像一辈子都会走下去的路，干几件结婚后，也许永远不会再干的事儿，仅此而已。细数，我们在一起5年的时间，一起牵手走过30几个国家， 从一开始带着不确定，到5年之后正式成为彼此的终生伴侣，得之，我幸。 前情提要：可能这篇游记会比较长，因为这次旅行的每分每秒我都不想错过，每个照片都充满情感，每个文字都发自心间。日子流水而逝，回想起来也不过那么几个热血沸腾的瞬间，愿与你共享。 这次 芬兰 之旅是我们结婚后的第一','http://127.0.0.1:3000/img/wKgBEFpTThuAPzgpAArt8FajVik80.jpeg','10701浏览',7);
INSERT INTO mfw_news VALUES(null,'如果你只有3千预算但想去马尔代夫玩个痛快，看我这篇攻略就够了！','说起 马尔代夫 ，你身边总有那么几个土豪朋友，欢快地自诩为“海岛专家”，然后不请自来的教你在 马尔代夫 如何最professional地选岛，教你如何用最少的钱装最强大的逼。 他们总是会反复强调，哪个岛的海水清澈度要达到30米以上，必须要住水屋，水屋附近必须要有一大片珊瑚，开门必须要看到五彩斑斓的鱼游来游去。 最后还发来了旅游网站上那些强大的点评分数加以强调住水屋的重要性，最后的最后还抛出了一句：如果人均预算没有2W软妹币，还不如去 深圳 大梅沙玩沙！ 对天生屌丝命的吃货夫妻来说，2W软妹币可以给吃货人夫买6000条内裤，绑','http://127.0.0.1:3000/img/wKgBZ1nxNBOAHNAkAAm5m_PtkKw59.jpeg','549920浏览',8);
INSERT INTO mfw_news VALUES(null,'【日本北海道】4天3晚初识北海道慢旅行','有一种旅行的原因是：我想象了它所有的样子，春天的花是怎样开，夏天的树是怎样绿，秋天的田野是如何的金黄，冬天的大地和天空又是何等的纯净和洁白，所以一定要亲眼去看看，真实的它，能否配得上我在脑海中千百遍的勾勒。 对 北海道 的执念，源于高中时期看的一部电影——《情书》。时隔太久，故事情节都在记忆里模糊了，只记得各种深深浅浅的白，白色的远山，白色的雪地，图书馆里被风轻轻扬起的白色窗帘，还有窗前少年身上，干净的白衬衫。反而是故事里的 小樽 雪原，从那时候起就被刻在了脑海里。终于在这个十二月能去 北海道 看雪，','http://127.0.0.1:3000/img/wKgBZ1nxNBOAHNAkAAm5m_PtkKw59 (1).jpeg','664952浏览',9);
INSERT INTO mfw_news VALUES(null,'贝加尔湖：我在萨满石前向你求婚，你愿意嫁给我吗？',' 我曾偶尔想象过向我心爱的姑娘求婚的场景，青涩梦境里大多是像电视剧和广告里的那般，跳进许愿池中湿身将钻戒捞起，或是在趁她熟睡时将玫瑰花瓣撒满房间，单膝跪地等待她的醒来。然而渐渐的我感觉这样的求婚方式太过于普通没有创意，如何才能给她一次终生难忘的求婚，我从刚认识她的时候就在想这个问题。 姑娘常说起她没有见过纷飞的大雪，她遇到的最冷的温度就是 南京 的冬天，当我跟她说起我在 雪乡 零下二十多度的经历时，她星星般闪烁的眼里充满着好奇。我许诺带她去 芬兰 过圣诞，去 黄刀镇 看极光，想要出其不意地在圣诞老人的故乡','http://127.0.0.1:3000/img/wKgIDlo7ulaAWCH0ABrEe4aj9nc06.jpeg','308472浏览',10);

CREATE TABLE mfw_coutry(
    id INT PRIMARY KEY AUTO_INCREMENT,
    contry VARCHAR(25),
    cid  INT ,
);
INSERT INTO mfw_coutry VALUES(null,"国内",1);
INSERT INTO mfw_coutry VALUES(null,"港澳台",2);
INSERT INTO mfw_coutry VALUES(null,"日韩",3);
INSERT INTO mfw_coutry VALUES(null,"东南亚",4);
CREATE TABLE mfw_coutry_details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255),
    add_pho VARCHAR(255),
    did  INT ,
);
INSERT INTO mfw_coutry_details VALUES(null,"北京","http://127.0.0.1:3000/img/wKgB6lSgx0KAAtuCAAVoSPI1DUk40.jpeg",1);
INSERT INTO mfw_coutry_details VALUES(null,"厦门","http://127.0.0.1:3000/img/wKgIDlo7ulaAWCH0ABrEe4aj9nc06.jpeg",1);
INSERT INTO mfw_coutry_details VALUES(null,"三亚","http://127.0.0.1:3000/img/wKgBs1dP15aAEhYRAARtahavugY95.jpeg",1);
INSERT INTO mfw_coutry_details VALUES(null,"上海","http://127.0.0.1:3000/img/wKgB3FYu57iAeKCZAADn6gzPV2o53.jpeg",1);
INSERT INTO mfw_coutry_details VALUES(null,"成都","http://127.0.0.1:3000/img/wKgBpVYfRkqAIeUVAAIhvcm_97Y75.jpeg",1);
INSERT INTO mfw_coutry_details VALUES(null,"丽江","http://127.0.0.1:3000/img/wKgB4lNYlJGAf371AAE58nN48GY90.jpeg",1);
INSERT INTO mfw_coutry_details VALUES(null,"香港","http://127.0.0.1:3000/img/wKgB3FGMgSCAZo0qAAgGckFTqJA54.jpeg",2);
INSERT INTO mfw_coutry_details VALUES(null,"澳门","http://127.0.0.1:3000/img/wKgBpVWiLnaAC1-cAA21442UzLk18.jpeg",2);
INSERT INTO mfw_coutry_details VALUES(null,"台北","http://127.0.0.1:3000/img/wKgB6lQnxZqAfMxIAASBo8KcOEc67.jpeg",2);
INSERT INTO mfw_coutry_details VALUES(null,"垦丁","http://127.0.0.1:3000/img/wKgBs1ZqSM6AaFuuAAR--oh86xY545.png",2);
INSERT INTO mfw_coutry_details VALUES(null,"花莲","http://127.0.0.1:3000/img/wKgB6lQnxEOAaMnxAAjT5EUF-rM68.jpeg",2);
INSERT INTO mfw_coutry_details VALUES(null,"高雄","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",2);
INSERT INTO mfw_coutry_details VALUES(null,"东京","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",3);
INSERT INTO mfw_coutry_details VALUES(null,"大阪","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",3);

INSERT INTO mfw_coutry_details VALUES(null,"京都","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",3);
INSERT INTO mfw_coutry_details VALUES(null,"济州岛","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",3);
INSERT INTO mfw_coutry_details VALUES(null,"札幌","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",3);
INSERT INTO mfw_coutry_details VALUES(null,"首尔","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",3);
INSERT INTO mfw_coutry_details VALUES(null,"曼谷","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",4);
INSERT INTO mfw_coutry_details VALUES(null,"普吉岛","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",4);
INSERT INTO mfw_coutry_details VALUES(null,"清迈","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",4);
INSERT INTO mfw_coutry_details VALUES(null,"吉隆坡","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",4);
INSERT INTO mfw_coutry_details VALUES(null,"新加坡","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",4);
INSERT INTO mfw_coutry_details VALUES(null,"巴厘岛","http://127.0.0.1:3000/img/wKgB6lQlRDuAKV3fAAFj0BxctU055.jpeg",4);