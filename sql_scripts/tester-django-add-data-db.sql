-- insert data to polls_quiz

INSERT INTO polls_quiz (name,description) VALUES
	 ('Столицы Мира','Опрос по столицам мира'),
	 ('Открытия ученых','Кто что открыл'),
	 ('Книга-герой','Соотнести героя и книгу');
	
-- insert data to polls_question
	
INSERT INTO polls_question (question_text,pub_date,quiz_id) VALUES
	 ('Столица Турции','2024-07-21 12:26:48',1),
	 ('Столица Саудовской Аравии','2024-07-21 12:27:28',1),
	 ('Столица Казахстана','2024-07-21 12:28:17',1),
	 ('Столица Новой Зеландии','2024-07-21 12:29:14',1),
	 ('Кто открыл закон всемирного тяготения?','2024-07-21 12:31:35',2),
	 ('Кто является автором теории эволюции путем естественного отбора?','2024-07-21 12:32:07',2),
	 ('Кто открыл радиоактивность?','2024-07-21 12:33:11',2),
	 ('Кто сформулировал принцип неопределенности?','2024-07-21 12:33:55',2),
	 ('Кто главный герой романа "Лолита" Владимира Набокова?','2024-07-21 12:52:13',3),
	 ('Кто главный герой романа "Бойцовский клуб" Чака Паланика?','2024-07-21 12:53:08',3);
INSERT INTO polls_question (question_text,pub_date,quiz_id) VALUES
	 ('Кто главный герой романа "Поднятая целина" Михаила Шолохова?','2024-07-21 12:53:57',3),
	 ('Кто главный герой романа "Гроздья гнева" Джона Стейнбека?','2024-07-21 12:54:56',3),
	 ('Столица Шри-Ланки','2024-07-21 14:43:58',1),
	 ('Столица Нигерии','2024-07-21 14:44:55',1),
	 ('Кто открыл структуру ДНК?','2024-07-21 14:46:24',2),
	 ('Кто изобрел микроскоп?','2024-07-21 14:47:21',2),
	 ('Кто главный герой романа "Унесенные ветром" Маргарет Митчелл?','2024-07-21 14:48:45',3),
	 ('Кто главный герой романа "Тропик Рака" Генри Миллера?','2024-07-21 14:49:54',3);

-- insert data polls_choice
	
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Анкара',0,1),
	 ('Стамбул',1,1),
	 ('Измир',0,1),
	 ('Анталия',0,1),
	 ('Джидда',0,2),
	 ('Мекка',0,2),
	 ('Эр-Рияд',1,2),
	 ('Медина',0,2),
	 ('Алма-Ата',0,3),
	 ('Нур-Султан',1,3);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Шымкент',0,3),
	 ('Караганда',0,3),
	 ('Окленд',0,4),
	 ('Гамильтон',0,4),
	 ('Крайстчерч',0,4),
	 ('Веллингтон',1,4),
	 ('Альберт Эйнштейн',0,5),
	 ('Исаак Ньютон',1,5),
	 ('Галилео Галилей',0,5),
	 ('Джеймс Максвелл',0,5);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Грегор Мендель',0,6),
	 ('Жан-Батист Ламарк',0,6),
	 ('Чарльз Дарвин',1,6),
	 ('Альфред Рассел Уоллес',0,6),
	 ('Эрнест Резерфорд',0,7),
	 ('Мария Кюри',0,7),
	 ('Анри Беккерель',1,7),
	 ('Нильс Бор',0,7),
	 ('Вернер Гейзенберг',1,8),
	 ('Альберт Эйнштейн',0,8);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Макс Планк',0,8),
	 ('Эрвин Шрёдингер',0,8),
	 ('Гумберт Гумберт',1,9),
	 ('Клэр Куилти',0,9),
	 ('Шарлотта Гейз',0,9),
	 ('Долорес Гейз',0,9),
	 ('Марла Сингер',0,10),
	 ('Тайлер Дёрден',0,10),
	 ('Рассказчик (без имени)',1,10),
	 ('Роберт Полсон',0,10);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Макар Нагульнов',0,11),
	 ('Семен Давыдов',1,11),
	 ('Прохор Зыков',0,11),
	 ('Лукерья Пахомовна',0,11),
	 ('Том Джоуд',1,12),
	 ('Джим Кэйси',0,12),
	 ('Ма Джоуд',0,12),
	 ('Роуз оф Шэрон',0,12),
	 ('Коломбо',0,13),
	 ('Канди',0,13);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Джафна',0,13),
	 ('Шри-Джаяварденепура-Коте',1,13),
	 ('Лагос',0,14),
	 ('Абуджа',1,14),
	 ('Кано',0,14),
	 ('Ибадан',0,14),
	 ('Джеймс Уотсон и Фрэнсис Крик',1,15),
	 ('Розалинд Франклин',0,15),
	 ('Грегор Мендель',0,15),
	 ('Томас Морган',0,15);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Ганс Липперсгей',0,16),
	 ('Роберт Гук',0,16),
	 ('Антони ван Левенгук',0,16),
	 ('Захарий Янссен',1,16),
	 ('Мелани Гамильтон',0,17),
	 ('Ретт Батлер',0,17),
	 ('Скарлетт О''Хара',1,17),
	 ('Эшли Уилкс',0,17),
	 ('Карлос',0,18),
	 ('Генри',1,18);
INSERT INTO polls_choice (choice_text,correct,question_id) VALUES
	 ('Мона',0,18),
	 ('Филипп',0,18);

-- insert data polls_userprofile
INSERT INTO polls_userprofile (currency,background_color,border_color,user_id) VALUES
	 (12,'#8adff4','#000000',1),
	 (0,'#FFFFFF','#000000',2),
	 (0,'#FFFFFF','#000000',3);

-- insert data polls_useranswer
INSERT INTO polls_useranswer (choice_id,question_id,user_id,"result") VALUES
	 (2,1,1,1),
	 (7,2,1,1),
	 (10,3,1,1),
	 (16,4,1,1),
	 (52,13,1,1),
	 (54,14,1,1),
	 (18,5,1,1),
	 (23,6,1,1),
	 (27,7,1,1),
	 (29,8,1,1);
INSERT INTO polls_useranswer (choice_id,question_id,user_id,"result") VALUES
	 (57,15,1,1),
	 (64,16,1,1),
	 (33,9,1,1),
	 (39,10,1,0),
	 (42,11,1,1),
	 (45,12,1,0),
	 (67,17,1,1),
	 (70,18,1,1),
	 (1,1,2,0),
	 (5,2,2,0);
INSERT INTO polls_useranswer (choice_id,question_id,user_id,"result") VALUES
	 (9,3,2,0),
	 (13,4,2,0),
	 (49,13,2,0),
	 (53,14,2,0),
	 (17,5,2,0),
	 (21,6,2,0),
	 (25,7,2,0),
	 (30,8,2,0),
	 (58,15,2,0),
	 (61,16,2,0);
INSERT INTO polls_useranswer (choice_id,question_id,user_id,"result") VALUES
	 (34,9,2,0),
	 (37,10,2,0),
	 (42,11,2,0),
	 (46,12,2,0),
	 (65,17,2,0),
	 (69,18,2,0);


