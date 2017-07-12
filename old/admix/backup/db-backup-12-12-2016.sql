 
CREATE TABLE `ciudad` (
  `COD_CIUDAD` int(11) NOT NULL,
  `CIUDAD` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`COD_CIUDAD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci
 
 
INSERT INTO ciudad VALUES('1','IBAGUE');
INSERT INTO ciudad VALUES('2','BOGOTA');
INSERT INTO ciudad VALUES('3','MEDELLIN');
INSERT INTO ciudad VALUES('4','CALI');
INSERT INTO ciudad VALUES('5','BUCARAMANGA');
INSERT INTO ciudad VALUES('6','LIBANO');
INSERT INTO ciudad VALUES('7','ESPINAL');
INSERT INTO ciudad VALUES('8','CUCUTA');
INSERT INTO ciudad VALUES('9','PEREIRA');
INSERT INTO ciudad VALUES('10','MANIZALEZ');
INSERT INTO ciudad VALUES('11','ARMENIA');
INSERT INTO ciudad VALUES('12','CARTAGENA');

 
 
 
CREATE TABLE `failed` (
  `ID` int(11) NOT NULL,
  `EMAIL` text COLLATE utf8_unicode_ci,
  `CLAVE` text COLLATE utf8_unicode_ci,
  `NOMBRE` text COLLATE utf8_unicode_ci,
  `LUGAR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAIL` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IP` text COLLATE utf8_unicode_ci,
  `FECHA` date DEFAULT NULL,
  `HORA` text COLLATE utf8_unicode_ci,
  `GENERO` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `CIUDAD` int(3) DEFAULT NULL,
  `VALORACION` int(11) DEFAULT NULL,
  `NUM_CEL` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEC` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
 
 
INSERT INTO failed VALUES('401','KAMILAT1789-@HOTMAIL.COM','jonnier03','MARIA CAMILA TANGARIFE', '' ,'1','186.114.244.223','2016-04-12','10:51:22','F','2002-03-31','1','3','312 4507085','1');
INSERT INTO failed VALUES('398','GABYAT31@HOTMAIL.COM','vat2910','GABRIELA ANDRADE', '' ,'1','190.68.48.123','2016-04-08','16:03:33','F','2001-12-31','3','4','','1');
INSERT INTO failed VALUES('393','TATISLOPEZ03@HOTMAIL.COM','marthacecilialopez','TATIANA LOPEZ ', '' ,'1','179.33.115.216','2016-03-30','09:18:37','F','0000-00-00','1','3','','1');
INSERT INTO failed VALUES('394','TATISLOPEZ03@HOTMAIL.COM','marthacecilialopez','', '' ,'1','179.33.115.216','2016-03-30','09:19:38','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('390','LILIANY.REINA@GMAIL.COM','lilian123456','LILIAN REINA', '' ,'1','190.159.177.3','2016-03-02','16:53:24','F','0000-00-00','1','3','313 8718654','1');
INSERT INTO failed VALUES('389','','','', '' ,'1','186.87.87.107','2016-02-12','15:03:29','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('387','TG318105@GMAIL.COM','3142110079bonmis','TATIANA GONZALEZ', '' ,'1','186.117.83.52','2016-02-11','11:18:55','F','2001-07-06','1','3','','1');
INSERT INTO failed VALUES('388','3106698499','monoypau','PAULA CASTAÑEDA', '' ,'1','181.49.74.113','2016-02-11','11:34:26','F','2000-06-05','1','4','3106698499','1');
INSERT INTO failed VALUES('383','PRINCISLIZETH@HOTMAIL.COM','nati2601','LIZETH GONZALEZ', '' ,'1','161.10.126.178','2016-02-06','16:12:35','F','0000-00-00','1','1','312 7819071','1');
INSERT INTO failed VALUES('384','ALEJITAPALASIOS12@HOTMAIL.COM','monicayyenifer123','ALEJANDRA PALACIOS', '' ,'1','161.10.121.42','2016-02-06','18:35:07','F','2001-08-26','1','1','320 8863766','1');
INSERT INTO failed VALUES('369','SHIRLYDCRUZ@HOTMAIL.COM','dayana26','Shirly Cruz', '' ,'1','186.113.225.253','2016-02-05','12:26:52','F','0000-00-00','1','0','','1');
INSERT INTO failed VALUES('370','PRINCISLIZETH@HOMAIL.COM','nati14789','Lizeth Gonzalez', '' ,'1','161.10.118.137','2016-02-05','13:25:04','','0000-00-00','0','0','','1');
INSERT INTO failed VALUES('371','LOLITANINDA2009@HOTMAIL.COM ','teamo1209','DIANA RENGIFO', '' ,'1','161.10.127.250','2016-02-05','13:26:26','F','1998-01-24','1','1','312 3499434 321 3056824','0');
INSERT INTO failed VALUES('374','NIKOL_MELISA@HOTMAIL.COM','3013775785','NICOL SALAZAR', '' ,'1','190.242.76.47','2016-02-05','14:48:49','F','1999-10-30','1','4','304 3707567 310 3027428','0');
INSERT INTO failed VALUES('380','KAMILAT1789-@HOTMAIL.COM','nicolas13','', '' ,'1','190.68.17.133','2016-02-05','18:49:34','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('382','SHIRLYDCRUZ@HOTMAIL.COM','dayana26','', '' ,'1','190.68.22.227','2016-02-05','21:24:54','','0000-00-00','0','0','','1');
INSERT INTO failed VALUES('360','CESAR.ORTIZM2016@GMAIL.COM','cesarortiz123','CESAR ORTIZ', '' ,'1','186.87.109.208','2016-02-03','09:23:19','M','2001-03-10','1','0','','0');
INSERT INTO failed VALUES('356','NATI2197@HOTMAIL.COM','nataliadiazt','', '' ,'1','190.253.1.148','2016-01-30','22:51:02','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('357','NATI2197@HOTMAIL. COM','nataliadiazt','', '' ,'1','190.253.1.148','2016-01-30','22:54:41','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('331','DANIELJIMENEZ1954@GMAIL.COM','danielyangie24','DANIEL JIMENEZ', '' ,'1','190.65.91.18','2016-01-28','09:55:37','M','2000-06-07','1','0','321 9070900','0');
INSERT INTO failed VALUES('334','GABRIELASIERRA08@HOTMAIL.COM','marisell','GABRIELA SIERRA', '' ,'1','186.82.168.177','2016-01-28','17:39:54','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('336','EMILYSOFIAB15@HOTMAIL.COM','delaghettodlg','VALENTINA RODRIGUEZ ', '' ,'1','152.201.191.67','2016-01-28','17:45:06','F','1998-08-23','1','5','3124127776','0');
INSERT INTO failed VALUES('337','EMILYSOFIAB15@HOTMAIL.COM','delaghettodlg','', '' ,'1','152.201.191.67','2016-01-28','17:52:01','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('344','REYESC915@GMAIL.COM','980428','CAMILA REYES', '' ,'1','186.114.246.117','2016-01-28','18:22:44','F','1998-04-28','1','2','','0');
INSERT INTO failed VALUES('345','REYESC915@GMAIL.COM','980428','', '' ,'1','186.114.246.117','2016-01-28','18:24:57','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('346','TATISLOPEZ03@HOTMAIL.COM','22tequierowilliam','TATIANA LOPEZ', '' ,'1','161.10.112.15','2016-01-28','18:45:36','F','0000-00-00','1','3','','0');
INSERT INTO failed VALUES('353','ARLYVANESSAMARIN@HOTMAIL.COM','vanessamarin123','VANESSA MARIN', '' ,'1','186.144.211.48','2016-01-28','22:36:14','','0000-00-00','0','0','0','0');
INSERT INTO failed VALUES('319','DANIELALACUL07@HOTMAIL.COM','daniela123','DANIELA MUÑOZ', '' ,'1','201.244.42.222','2016-01-26','17:57:23','F','0000-00-00','0','4','','0');
INSERT INTO failed VALUES('314','TATIANAVERONICA.GOMEZGOMEZ.1','juangomezgomez','TATIANA GOMEZ', '' ,'1','186.84.117.71','2015-11-11','19:30:08','F','0000-00-00','1','0','','0');
INSERT INTO failed VALUES('310','LUFEDANI_1314@HOTMAIL.ES','teamojuandavid2619','', '' ,'1','190.65.88.119','2015-11-10','14:02:05', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('311','CASTRILLONJULIETH@YAHOO.COM','kendrylexandracastrillon','KENDRY HERNANDEZ', '' ,'1','190.255.175.119','2015-11-10','20:01:28', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('312','MARIALEJANDRA2903@GMAIL.COM','2229nalguitas','ALEJANDRA PERDONO', '' ,'1','186.170.193.59','2015-11-10','20:09:16', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('297','TATISLOPEZ03@HOTMAIL.COM','14demividajeffer','TATIANA LOPEZ', '' ,'1','161.10.138.182','2015-11-05','10:32:48', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('298','TATISLOPEZ03@HOTMAIL.COM','14demividajeffer','TATIANA LOPEZ', '' ,'1','161.10.138.182','2015-11-05','10:32:49', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('305','COLEGIO.654@HOTMAIL.COM','nicolas1515','NICOLAS CASTRO', '' ,'1','191.95.253.248','2015-11-05','17:37:36', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('304','COLEGIO.654@HOTMAIL.COM','nicolas1515','NICOLAS CASTRO', '' ,'1','191.95.253.248','2015-11-05','17:36:58', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('306','ELIANSAANTIAGO321@HOTMAIL.COM','santiago321','', '' ,'1','161.10.148.166','2015-11-05','17:39:52', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('307','COLEGIO.654@HOTMAIL.COM','nicolas1515','NICOLAS CASTRO', '' ,'1','191.95.253.248','2015-11-05','17:43:08', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('308','PAO.ANDREA.165@FACEBOOK.COM','paolajf06','PAOLA ANDREA CESPEDES', '' ,'1','179.32.9.188','2015-11-05','19:17:19', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('296','MILLOS-B8@HOTMAIL.COM','andresblandon99','ANDRES BLANDON', '' ,'1','190.65.16.107','2015-11-04','15:41:20','M','1999-05-21','1','0','314 258237','1');
INSERT INTO failed VALUES('293','ROCHI19MARZO@HTOMIL.COM','','', '' ,'1','190.252.229.57','2015-10-22','08:02:47', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('292','DAYANNAFAJARDO2010@HOTMAIL.COM','juansoto112729','DAYANA FAJARDO', '' ,'1','186.115.251.164','2015-10-16','11:53:39','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('289','JULYSAN25@HOTMAIL.COM','amarescombatir','', '' ,'1','186.84.119.43','2015-10-06','11:53:30','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('290','GABYAT31@HOTMAIL.COM','julian210615','GABRIELA ANDRADE ', '' ,'1','186.115.231.116','2015-10-06','12:03:45', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('285','3144242640','3144242640mayerky','', '' ,'1','190.9.200.170','2015-10-04','21:04:27', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('284','JULYSAN25@HOTMAIL.COM','amarescombatir','JULIETH RODRIGUEZ ', '' ,'1','186.84.119.43','2015-10-02','06:52:10','F','1987-10-14','1','1','322 2517764','0');
INSERT INTO failed VALUES('283','3157643093','smqa3103242032','MARíA PINZON QUINTERO ', '' ,'1','186.0.64.254','2015-09-30','13:59:46','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('278','LORENA.DEVIA.92@FACEBOOK.COM','d3V14gl0R14','LORENA DEVIA', '' ,'1','186.115.227.226','2015-09-29','21:22:51','F','1995-01-25','1','2','300 5427359','0');
INSERT INTO failed VALUES('279','DEVIA.LORENA.11@HOTMAIL.COM','d3V14gl0R14','Lorena Devia', '' ,'1','186.115.227.226','2015-09-29','21:30:56','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('280','JUANDA2516@HOTMAIL.COM','1005840096','JUAN DAVID RIVERA', '' ,'1','161.10.105.189','2015-09-29','22:10:09', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('275','DAHIANALOPEZ0129@GMAIL.COM','100265270301292001dahianalopezz','', '' ,'1','186.0.95.11','2015-09-26','14:30:33', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('273','DANI_ECASTRO@HOTMAIL.COM','danielito2174','DANIEL CASTRO', '' ,'1','186.115.240.51','2015-09-24','19:10:30', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('274','KAMIC1998@HOTMAIL.COM','camila1807','Camila Cruz', '' ,'1','186.84.102.19','2015-09-24','23:07:55', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('265','DAHIANALOPEZ0129@GMAIL.COM','100265270301292001dahianalopezz','DAHIANA LOPEZ', '' ,'1','186.145.238.225','2015-09-23','11:39:31', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('267','3157643093','smqa3103242032','MARIA PAULA PINZON', '' ,'1','200.21.45.12','2015-09-23','12:33:52','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('269','JESI_NATA1@HOTMAIL.COM','321286786','', '' ,'1','186.114.245.123','2015-09-23','13:40:01', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('271','MARYLUZ8179@HOTMAIL.COM','dayismeamo1000445388','DAYANA GARCES', '' ,'1','190.66.222.84','2015-09-23','19:41:19','F','0000-00-00','1','3','','0');
INSERT INTO failed VALUES('272','LUISAOZAETA@HOTMAIL.COM','65781862l','LUISA OZAETA', '' ,'1','186.87.109.237','2015-09-23','20:11:11', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('263','DANI_ECASTRO@HOTMAIL.COM','danielito2274','', '' ,'1','190.65.16.19','2015-09-22','13:22:45', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('261','KAMIC1998@HOTMAIL.COM','camila1807','Camila Cruz', '' ,'1','190.252.186.30','2015-09-20','22:10:30', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('257','GABYAT31@HOTMAIL.COM','pabloalboran21','GABRIELA ANDRADE', '' ,'1','190.253.21.221','2015-09-17','10:35:59', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('258','3144242640','3144242640mayerky','', '' ,'1','190.9.201.70','2015-09-17','13:54:15', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('259','PAO.ANDREA.165@FACEBOOK.COM','07022002','PAOLA CESPEDES', '' ,'1','161.10.132.165','2015-09-17','17:27:57', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('260','3124587365','engañados estamos todos','DAYANA PARRA', '' ,'1','190.65.78.175','2015-09-17','23:28:26', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('252','ORIAJ90@HOTMAIL.COM','90110958187jairo1110503593','Jairo Ortiz', '' ,'1','23.27.220.41','2015-09-16','10:14:48', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('253','EDFRANMARLOP','elim 217maria','Francisco Martinez', '' ,'1','190.145.56.182','2015-09-16','10:33:52', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('254','3144242640','3144242640mayerly','Mayerly yara', '' ,'1','190.9.200.253','2015-09-16','14:03:09', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('256','NANCYPD-72@HOTMAIL.COM','portaldelavirgen','', '' ,'1','179.32.3.255','2015-09-16','20:38:23', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('250','3177344000','soydelaura','Alejandro Ibañez', '' ,'1','161.10.120.226','2015-09-15','18:35:32', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('251','LAURATINA_313@HOTMAIL.COM','pelaez','VALENTINA ESPINOSA', '' ,'1','190.66.213.243','2015-09-15','20:36:32','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('242','JUANDA2516@HOTMAIL.COM','1005840096','JUAN DAVID RIVERA', '' ,'1','161.10.100.222','2015-09-08','15:22:03', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('226','LILIANALESANA','lilianyineth','LILIAN REINA', '' ,'1','190.66.247.92','2015-08-11','21:39:26', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('227','GABYAT31@HOTMAIL.COM','gaby1005910960','GABRIELA ANDRADE', '' ,'1', '' ,'2015-08-11','22:47:43', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('228','KAMILAT1789- @HOTMAIL.COM','cachetes','CAMILA TANGARIFE', '' ,'1', '' ,'2015-08-11','22:47:43', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('207','ALEJANDRARP28-@HOTMAIL.COM','3125916484:)','DANIELA RODRIGUEZ', '' ,'1','190.66.247.127','2015-07-31','15:43:32','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('208','ALEJANDRARP28-@HOTMAIL.COM','3125916484:)','DANIELA RODRIGUEZ', '' ,'1','190.66.247.127','2015-07-31','15:44:32','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('209','VALETRI28@HOTMAIL.COM','valentina4785','', '' ,'1','190.159.177.172','2015-07-31','15:45:54', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('211','LAUMI_99@HOTMAIL.COM','outsidee','ALEJANDRA VILLANUEVA', '' ,'1','186.84.112.245','2015-07-31','15:52:48', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('212','VALERIA_PAREDES_BUENO@HOTMAIL.COM','37942003','', '' ,'1','186.0.64.199','2015-07-31','15:54:12', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('213','PAULASAENZ_123@HOTMAIL.COM','crocsminie','PAULA SAENZ', '' ,'1','190.253.27.103','2015-07-31','15:57:02','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('214','SEBASOTIS18@GMAIL.COM','395272621996sebastian','', '' ,'1','161.10.122.45','2015-07-31','16:01:20', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('215','ANGIEJULIETH2076@HOTMAIL.COM','julieth2000','JULIETH REINA', '' ,'1','186.86.39.57','2015-07-31','16:07:19','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('221','BRAYANZBROLI@HOTMAIL.COM','sapohpta','BRAYAN PEñALOZA', '' ,'1','190.255.163.172','2015-07-31','18:40:25', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('204','KEREN0199@HOTMAIL.COM','ROCAFELER01','ESTEFANIA CASTRO', '' ,'1','161.10.122.176','2015-07-30','22:35:07', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('202','NATA1175@HOTMAIL.COM','llegastetu','NATALIA GIRALDO', '' ,'1','190.242.83.152','2015-07-29','18:54:54', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('198','VALENLOMEJOR_2016@HOTMAIL.COM ','facebook2016','VALENTINA CARVAJAL', '' ,'1','190.68.30.14','2015-07-24','20:23:01','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('188','ALEJAMIRQUEZ@GMAIL.COM','maalmiza310397','ALEJANDRA MIRQUEZ','Ibague','1','186.113.228.133','2015-07-23','19:34:42','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('190','ANGIEPINEDITA13@HOTMAIL.ES','angie pineda','KATHERINE PINEADA','Bogota','1','190.24.38.132','2015-07-23','20:13:33','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('191','alejitalinda84@hotmail.com','amoresporsiempre17','Pass Fail', '' ,'1','161.10.140.215','2015-07-23','20:22:15', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('192','castrillonjulieth','kendryhernandez','All Fail', '' ,'1','190.253.23.136','2015-07-23','20:33:36', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('193','LAURAXIME-1999@HOTMAIL.COM','3017510077081422','LAURA HERNANDEZ', '' ,'1','161.10.146.198','2015-07-23','21:19:06','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('196','ANAQUESADA_15@HOTMAIL.COM','anaquesada2015','ANA QUESADA', '' ,'1','190.68.29.151','2015-07-23','21:49:35', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('181','ANAVILA_1004@HOTMAIL.COM','anitaaviilayazo','ANA AVILA', '' ,'1','191.102.119.246','2015-07-20','16:47:10', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('169','ALEJITA012002@HOTMAIL.COM','patchcipriano','CODE VERIFY', '' ,'1','186.86.36.10','2015-07-19','12:28:51', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('154','CAMILINA2000@HOTMAIL.COM','camila03122000','ANGIE CAMILA MATEUS', '' ,'1','161.10.147.179','2015-07-18','09:11:55','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('157','VALENJULIA78@HOTMAIL. COM','vAlenTI480','VALENTINA SANDOVAL', '' ,'1','179.32.10.213','2015-07-18','09:20:32','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('158','VALENJULIA78@HOTMAIL. COM','vAlenTI480','VALENTINA SANDOVAL', '' ,'1','179.32.10.213','2015-07-18','09:20:33','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('159','3144242640','314242650mayerly','MAYRERLY YARA', '' ,'1','190.9.200.161','2015-07-18','09:24:18', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('162','ELIANSANTIAGO321@HOTMAIL.COM','santiago123','SANTIAGO CAñAS', '' ,'1','161.10.152.130','2015-07-18','10:06:55', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('164','luisajulianacaviedes@gmail.com','valentinarodriguez','Pass Fail', '' ,'1','161.10.118.33','2015-07-18','13:45:19', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('166','MARLIZRAMIREZ376@HOTMAIL.COM','mariajose','LORENA RAMIREZ', '' ,'1','179.33.122.208','2015-07-18','16:40:14', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('168','JASINTA_7913@HOTMAIL.COM','plazas parra nicol','DAYANA PARRA', '' ,'1','161.10.132.177','2015-07-18','20:40:24', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('148','slre88@hotmail.com','1jhonriios8tumipresentepasadoyfuturo','Pass Fail', '' ,'1','181.51.60.88','2015-07-17','15:13:19', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('144','riosdayana16@hotmail.com','mamiteamo','Pass Fail', '' ,'1','200.21.45.12','2015-07-17','09:13:56', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('150','Yiselt-9218@hotmail.com','angieyiseltrr','Fail Pass', '' ,'1','161.10.109.155','2015-07-17','19:09:19', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('153','paulanatalia0923_ @hotmail.com','giraldo322','Natalia Barrios', '' ,'1','190.255.175.45','2015-07-17','22:55:12', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('108','3174112056','tata-0022','CATALINA ARAGON', '' ,'1','179.32.13.166','2015-07-16','15:05:53', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('109','Luisita-17-94@hotmail.com','mateo0117','Luisa Rivera', '' ,'1','191.108.243.180','2015-07-16','15:06:35', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('110','julietkata@gmail.com','julieth09','?Katherin Julieth', '' ,'1','201.216.52.54','2015-07-16','15:08:52', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('112','danielaestradasci@hotmail.com','sureñadecorazon','Daniela Estrada', '' ,'1','181.142.26.227','2015-07-16','15:30:09', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('114','linis.p.98@hotmail.com','LIFEFORGETTING','Pass Fail', '' ,'1','181.129.68.80','2015-07-16','15:35:10', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('116','diana.huertas.7@facebook.com','1006007650','Pass Fail', '' ,'1','181.53.51.69','2015-07-16','15:35:57', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('117','SOFY0414@HOTMAIL.COM','CamilaSofia','?BRIYHY SOFIA GRACIA', '' ,'1','190.68.21.160','2015-07-16','15:37:49','F','1997-04-14','1','0','321 9814746','0');
INSERT INTO failed VALUES('118','kaloren09@hotmail.com ','nosemeolvidateamomatiasroa','Lorena Puerto', '' ,'1','190.147.212.92','2015-07-16','15:37:53', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('119','KALOREN09@HOTMAIL.COM ','nosemeolvidateamomatiasroa','LORENA PUERTO', '' ,'1','190.147.212.92','2015-07-16','15:38:30','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('120','3103017733 linda-perez2001@hotmail.com','juanmaya','Laura Daniela Gonzalez', '' ,'1','186.84.104.10','2015-07-16','15:39:57', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('121','lau-ra-vane@hotmail.com','DIOSMADREONCECALDAS','Laura Venessa Villa', '' ,'1','190.0.41.118','2015-07-16','15:41:46', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('122','AMERICALOMEJOR-10@HOTMAIL.COM','puerta3222246706','CAROLINA BENITEZ', '' ,'1','190.66.56.192','2015-07-16','15:48:56', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('123','KAROLVANESSA2001@HOTMAIL.COM','lamarihuanaesmala','CAROL ORTIZ', '' ,'1','186.29.105.236','2015-07-16','16:23:55', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('125','camila-.gonzales@hotmail.com','65715734yiss','Yesenia Zuluaga', '' ,'1','186.115.173.5','2015-07-16','16:54:53', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('127','cuellitar2000@hotmail.com','1007384983','Andrea Cuellar', '' ,'1','190.253.30.218','2015-07-16','18:16:08', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('128','magdita2008@hotmail.com','210596 sierraleon','Magda Liliana Sierra Leon', '' ,'1','190.9.200.189','2015-07-16','18:21:06', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('129','leidygarcia97','danielaysegio123','Viviana Pedraza', '' ,'1','181.53.48.2','2015-07-16','18:24:54', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('133','KARENDITAS48521@HOTMAIL.COM','karenysanti3','KAREN DIAZ', '' ,'1','190.27.76.67','2015-07-16','18:51:07', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('136','LIZSTEFANNY99@HOTMAIL.COM','zafiro666666','LIZ BERMUDEZ', '' ,'1','190.252.36.69','2015-07-16','19:12:27','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('140','SOFIA9945@HOTMAIL.COM','3214063672','JULIETH FAJARDO', '' ,'1','190.242.75.152','2015-07-16','21:09:02','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('143','FFERCHAA@GMAIL.COM','ojoscolorsol23','MARIA CUBILLOS', '' ,'1','181.247.102.238','2015-07-16','22:26:41','','0000-00-00','0','0','','0');
INSERT INTO failed VALUES('101','nataliafernandezsilva@outlook.com','1006147738nata2001','Natalia Fernandez', '' ,'1','186.0.66.155','2015-07-14','14:53:43', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('103','valen_conegita@hotmail.com','juanpablojaramillotam','Pass Fail', '' ,'1','186.115.240.180','2015-07-14','18:27:41', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('104','angiellnicollepp@hotmail.com','unicorniosretrasados','User Fail', '' ,'1','186.87.118.6','2015-07-14','19:08:33', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('105','saralucia1930@hotmail.com','28535269','\nSara Lucia Villalba', '' ,'1','190.65.89.133','2015-07-14','19:38:03', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('98','CAMILOM_DEPORTESTOLIMA@HOTMAIL.COM','gorditomahecha99','CAMILO MAHECHA', '' ,'1','161.10.149.127','2015-07-05','14:06:50', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('96','DALLERLY991@HOTMAIL.COM','juanortiz','DALLERLY PEREZ', '' ,'1','190.65.91.207','2015-07-04','17:17:06', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('82','mava.mari@hotmail.com','areasontostartovernew','Valentina Ramirez', '' ,'1','190.159.179.246','2015-07-03','14:41:44', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('83','NATALIATOVAR12@GMAIL.COM','97255.,4','NATALIA TOVAR', '' ,'1','181.60.31.150','2015-07-03','15:07:36', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('86','paulis252010@hotmail.com','isabella4','Paula Vargas', '' ,'1','186.87.118.237','2015-07-03','15:50:22', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('87','3202086532','crhisso117','Cristian Suarez', '' ,'1','186.30.234.163','2015-07-03','17:21:24', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('88','ANYELBOHORQUEZ@HOTMAIL.ES','MFlaverde','MAFE LAVERDE', '' ,'1','161.10.110.232','2015-07-03','17:56:32', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('93','maye.sexi@hotmail.com','tequierojuntoamibb','Yesnny Londoño', '' ,'1','186.85.48.193','2015-07-03','21:05:33', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('77','JHONFREDYDUCUARA@OUTLOOK.ES','jhon012345678910','JHON FREDY DUCUARA', '' ,'1','107.167.107.11','2015-06-30','21:27:45', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('72','BETANCOURT1102@HOTMAIL.COM','mariam0102','MARIAM BETANCOURT', '' ,'1','190.254.239.9','2015-06-29','16:54:00', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('55','TKARENSANCHEZ27@HOTMAIL.COM','1007818212lauraromerocma123','KAREN SANCHEZ', '' ,'1','186.28.106.81','2015-06-28','12:09:29', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('60','LAURASAGA30@HOTMAIL.COM','Lindagarcia30','VALENTINA SALAZAR', '' ,'1','191.79.129.168','2015-06-28','13:08:07','F','2000-04-30','1','1','310 7840497-310 7726602','0');
INSERT INTO failed VALUES('61','3103167095','hola:)...','LINDA GUTIERREZ', '' ,'1','181.51.33.159','2015-06-28','13:38:27', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('62','LAURAFABIANA-05@HOTMAIL.COM','chimostrufia1232001','LAURA ALAPE', '' ,'1','186.147.147.159','2015-06-28','13:52:33','F','2001-06-05','1','0','','0');
INSERT INTO failed VALUES('64','MARICONA16@HOTMAIL COM','pedromary','MARY MORALES', '' ,'1','161.10.109.141','2015-06-28','15:03:38', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('65','dadigo13@hotmail.com','35520787','Daniela Diaz', '' ,'1','186.84.101.249','2015-06-28','15:18:00', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('67','dmmc_27@hotmail.com','laura123','Marcela Medina', '' ,'1','186.115.230.141','2015-06-28','17:17:22', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('68','sofi_bh@hotmail.es','skateboarding','Sofia Baron', '' ,'1','186.115.248.94','2015-06-28','19:04:07', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('69','MILLOS-B8@HOTMAIL.COM','andresblandon','ANDRES BLANDON', '' ,'1','161.10.156.13','2015-06-28','19:22:58', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('70','JENNI-ROSU@HOTMAIL.COM','25122000','JENNY RODRIGUEZ ', '' ,'1','186.145.217.145','2015-06-28','19:49:25', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('51','PAO.ANDREA.165@FACEBOOK.COM','07022002','PAOLA ANDREA', '' ,'1','190.65.91.132','2015-06-18','10:47:43', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('44','JUANDA2516@HOTMAIL.COM','2677938','JUAN DAVIDAD RIVERA', '' ,'1','161.10.156.72','2015-06-16','09:00:58', '' , '' , '' , '' , '' , '' );
INSERT INTO failed VALUES('47','SAMI0198@HOTMAIL.COM','3204728970sami','SANDRA CEBALLOS', '' ,'1','179.33.126.95','2015-06-16','10:12:42','F','1998-04-01','1','4','2147483647','1');
INSERT INTO failed VALUES('34','MECHITAS.031@HOTMAIL.COM','voleibol31','GABRIELA ANDRADE', '' ,'1','190.253.10.38','2015-06-15','10:30:56', '' , '' , '' , '' , '' , '' );

 
 
  
CREATE TABLE `logs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` text COLLATE utf8_unicode_ci,
  `CLAVE` text COLLATE utf8_unicode_ci,
  `NOMBRE` text COLLATE utf8_unicode_ci,
  `LUGAR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAIL` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IP` text COLLATE utf8_unicode_ci,
  `FECHA` date DEFAULT NULL,
  `HORA` text COLLATE utf8_unicode_ci,
  `GENERO` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `CIUDAD` int(3) DEFAULT NULL,
  `VALORACION` int(11) DEFAULT NULL,
  `NUM_CEL` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEC` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=411 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
 
 
INSERT INTO logs VALUES('149','LUISALEGRO-25@HOTMAIL.COM','andresmonoymaicol','KAMIILA LEGRO', '' , '' ,'161.10.159.71','2015-07-17','17:33:41','F','1993-04-03','1','1','312 3445230 315 2244891','0');
INSERT INTO logs VALUES('40','COCOLES28@HOTMAIL.COM','nicoldahiana1128','DAHIANA MESA', '' , '' ,'179.33.127.7','2015-06-16','14:57:15','F','2001-11-28','1','5','322 219358','1');
INSERT INTO logs VALUES('50','MARIAFERCHA_09@HOTMAIL.COM','Camposlozano98','MAFE CAMPOS', '' , '' ,'190.253.9.246','2015-06-18','08:53:58','F','1998-11-30','3','2','316','1');
INSERT INTO logs VALUES('147','LAURITA.9953@GMAIL.COM','theblindside','LAURA VALENTINA', '' , '' ,'186.113.85.8','2015-07-17','15:08:43','F','1999-02-08','6','0','','0');
INSERT INTO logs VALUES('63','KARIITHO_JOHANA@HOTMAIL.COM','karengutierrez','KAREN JOHANA GUTIERREZ', '' , '' ,'177.252.133.241','2015-06-28','14:57:48','F','2000-04-10','1','0','311 8928803 314 7347741','0');
INSERT INTO logs VALUES('66','XIMENA.899@HOTMAIL.COM','teamo#01','KAREN XIMENA DIAZ', '' , '' ,'181.53.51.133','2015-06-28','15:55:14','F','2001-09-21','1','2','321 3583881 314 4581504','0');
INSERT INTO logs VALUES('197','KEVIN18042014','1110580356','KEVIN HERNANDEZ', '' , '' ,'161.10.101.41','2015-07-24','18:52:25','M','1997-02-14','1','0',' 313 4389289','1');
INSERT INTO logs VALUES('74','MARUJITA1998@HOTMAIL.COM','mayramejia9','MAIRA MEJIA', '' , '' ,'186.116.244.218','2015-06-30','13:00:43','F','1998-01-04','1','3','311 4896501 315 7865968 311 2403001','0');
INSERT INTO logs VALUES('76','DANNAROJAS_@HOTMAIL.COM','rojas2001','DANNA ROJAS', '' , '' ,'181.59.44.214','2015-06-30','20:12:02','F','2001-09-01','1','0','','0');
INSERT INTO logs VALUES('81','ANGIELOREN29@HOTMAIL.COM','3112565453angiehuepa','ANGIE HUEPA', '' , '' ,'161.10.123.234','2015-07-03','14:33:04','F','1997-11-29','1','2','311 2637705 313 8068531','0');
INSERT INTO logs VALUES('84','3144114759','jamesrodriguez10','MARIANA FORERO', '' , '' ,'167.0.5.141','2015-07-03','15:35:18','F','1997-12-13','1','2','314 4114759 322 3603504 Correo electrónico mariana.forero.5','0');
INSERT INTO logs VALUES('90','ANAMARIAURBINACESPEDES@HOTMAIL.COM','anitateamute1029','ANA URBINA', '' , '' ,'161.10.158.220','2015-07-03','18:33:04','F','1999-11-29','1','2','310 4865407 320 8469832 322 2373137','0');
INSERT INTO logs VALUES('92','PAULA_.26@HOTMAIL.COM','3136535202','KARIME MORALES', '' , '' ,'191.110.153.0','2015-07-03','20:27:23','F','1997-02-17','2','3','3136535202','1');
INSERT INTO logs VALUES('100','MILEJAVI2012@HOTMAIL.COM','brayanestibenymariajose','MARIA JOSE SABOGAL', '' , '' ,'186.146.100.111','2015-07-14','14:47:30','F','2004-12-19','1','0','321 3120968','0');
INSERT INTO logs VALUES('102','REINA_HERMOSA_23@HOTMAIL.COM','camilitarodriguez','PAULA CAMILA RODRIGUEZ', '' , '' ,'190.254.229.243','2015-07-14','14:54:56','F','2001-04-24','1','4','315 4202669','0');
INSERT INTO logs VALUES('106','DAIROACEVEDO25@HOTMAIL.COM','990325dairo','DAIRO ACEVEDO', '' , '' ,'186.84.102.157','2015-07-14','20:59:21','M','1999-03-25','1','0','2147483647','1');
INSERT INTO logs VALUES('115','MAFESILLALOCA@HOTMAIL.COM','3142228331','MARIA FERNANDA RODRIGUEZ', '' , '' ,'181.59.197.211','2015-07-16','15:35:56','F','1997-11-07','1','4','312 4271406 300 2786005','0');
INSERT INTO logs VALUES('126','VALERIIA.DOVALE','valeriaysantiagodovale2214','VALERIA DOVALE', '' , '' ,'186.30.88.79','2015-07-16','17:11:17','F','1991-08-22','2','0','','0');
INSERT INTO logs VALUES('137','KIARAYLAURA@HOTMAIL.COM','elefante','LAURA ROJAS', '' , '' ,'190.252.48.39','2015-07-16','19:15:16','F','1995-05-26','6','0','320 8280536','0');
INSERT INTO logs VALUES('138','DAYANNITAV54@HOTMAIL.COM','**FG-OP25zZz#02!!:3','ZULY VILLANUEVA', '' , '' ,'186.145.13.70','2015-07-16','19:17:15','F','1994-12-09','6','2','314 4728820','0');
INSERT INTO logs VALUES('142','ANGIEZAMORA14@HOTMAIL.COM','angiezamoraloveab','ANGIE ZAMORA', '' , '' ,'190.127.232.15','2015-07-16','21:25:54','F','1997-05-02','6','2','','0');
INSERT INTO logs VALUES('152','DAYULI123@HOTMAIL.COM','yuliana3108048927','YULIANA ROMERO', '' , '' ,'161.10.127.0','2015-07-17','19:44:14','F','2001-07-26','1','1','310 804892','1');
INSERT INTO logs VALUES('156','MACHO_ERICK@HOTMAIL.COM','jimmy123456','ERICKSON NAVARRO', '' , '' ,'190.66.244.63','2015-07-18','09:17:04','M','1997-03-15','1','0','318 437353','1');
INSERT INTO logs VALUES('160','3104858931','97061502029','MAICOL LEAL', '' , '' ,'190.65.17.188','2015-07-18','09:59:12','M','1997-06-15','1','0','310 4858931','1');
INSERT INTO logs VALUES('163','ADRIANA14LUZ@HOTMAIL.COM ','281000128994','ADRIANA CASTAñO', '' , '' ,'190.90.193.147','2015-07-18','12:39:27','F','1995-11-03','2','3','313 8450070','0');
INSERT INTO logs VALUES('185','NICOLMESA1128@GMAIL.COM','1005910778','DAHIANA MESA EMAIL', '' , '' ,'179.33.127.192','2015-07-21','20:40:20','F','2001-10-28','1','5','','0');
INSERT INTO logs VALUES('200','PJIBAGUE','arquiibague','PJ IBAGUE', '' , '' ,'186.116.248.196','2015-07-26','21:10:50','','0000-00-00','1','0','','0');
INSERT INTO logs VALUES('201','pjibague','arquiibague', '' , '' , '' ,'186.116.248.196','2015-07-26','21:11:45', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('205','JULIANC.R7@OUTLOOK.COM','julian123','JULIAN CANO', '' , '' ,'161.10.126.50','2015-07-31','15:36:04','M','2001-04-30','2','0','320 997629','1');
INSERT INTO logs VALUES('206','CAMIMONROY23@OUTLOOK. COM','felipeandrade','CAMILA MONROY', '' , '' ,'190.253.20.247','2015-07-31','15:41:57','F','1999-05-23','1','3','316 8119286','0');
INSERT INTO logs VALUES('210','VALETRI28@HOTMAIL.COM','valentina14785','VALENTINA TRIANA', '' , '' ,'190.159.177.172','2015-07-31','15:46:26','F','2000-02-28','1','2','314 4334343','0');
INSERT INTO logs VALUES('216','ESTEFANYABELLAGALVEZ@HOTMAIL.COM','meag98','ESTEFANY ABELLA', '' , '' ,'179.32.14.73','2015-07-31','16:38:41','F','1999-09-12','1','4','314 3897365','0');
INSERT INTO logs VALUES('217','DAYANNAZULETA_1999@HOTMAIL.COM','ludazucu','DAYANA ZULETA', '' , '' ,'186.116.242.179','2015-07-31','17:03:02','F','1999-05-07','1','3','316 8539228 313 3523181 Fecha de nacimiento 7 de mayo de 19','0');
INSERT INTO logs VALUES('218','dayannazuleta_1999@hotmail.com','ludazucu', '' , '' , '' ,'186.116.242.179','2015-07-31','17:06:06', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('219','NATYCA201@HOTMAIL.COM','perrodepeluche','NATALY OYOS', '' , '' ,'186.84.100.129','2015-07-31','17:37:36','F','1999-08-12','1','2','311 5016015','0');
INSERT INTO logs VALUES('220','LAURA-DAGUZA@HOTMAIL.COM','tefadaniela','DANIELA GUTIERREZ', '' , '' ,'186.115.249.88','2015-07-31','18:03:21','F','1998-06-09','1','1','313 2915722','0');
INSERT INTO logs VALUES('222','julianc.r7@outlook.com','julian123', '' , '' , '' ,'179.32.3.166','2015-08-01','14:38:12', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('223','KATHE-ARIAS21@HOTMAIL.COM','3102010136','SOFIA YARA', '' , '' ,'179.32.9.119','2015-08-02','19:37:13','F','2005-09-21','1','0','310 2010136','0');
INSERT INTO logs VALUES('248','pjibague@hotmail.com','arquiibague', '' , '' , '' ,'181.249.200.195','2015-09-15','16:36:05', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('243','CHEOPUMA@HOTMAIL.COM','tolima.','CHEO ANDRADE', '' , '' ,'179.33.120.216','2015-09-08','18:25:20','M','1999-11-24','1','0','314 216242','1');
INSERT INTO logs VALUES('255','JONATHANACUNAPAULA@GMAIL.COM','2015bucaramanga','JONATHAN ACUÑA', '' , '' ,'186.183.137.101','2015-09-16','17:49:57','M','1989-12-29','1','0','8124082','0');
INSERT INTO logs VALUES('264','3203461210','katycatforevah','GERAL NAVARRO', '' , '' ,'190.253.21.53','2015-09-23','10:56:08','F','2000-03-14','1','2','320 3461210','0');
INSERT INTO logs VALUES('266','MARIALE13@HOTMAIL.COM','tathan','MARIALE LEON', '' , '' ,'181.59.39.47','2015-09-23','12:01:38','F','1994-08-06','1','1','315 6354059 300 8137505 318 3624891','0');
INSERT INTO logs VALUES('268','JESI_NATA1@HOTMAIL.COM','3212286786','NATALIA PELAEZ', '' , '' ,'186.114.245.123','2015-09-23','13:34:47','F','2000-12-11','1','3','','0');
INSERT INTO logs VALUES('276','jonathanacunapaula@gmail.com','2015bucaramanga', '' , '' , '' ,'191.68.207.102','2015-09-28','19:53:45', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('277','LIZETHDAYANAL@GMAIL.COM','pjo183.lll.','LIZETH DAYANA LEON', '' , '' ,'190.255.165.14','2015-09-28','22:00:53','F','2000-05-30','1','1','312 3198832','0');
INSERT INTO logs VALUES('281','ALOMEJORDEAQUI123@HOTMAIL.COM','mividaloka','JUAN DAVID VARON', '' , '' ,'179.33.119.23','2015-09-30','10:37:51','M','1998-05-18','1','0','314 303849','1');
INSERT INTO logs VALUES('282','CAMCONSOLATA@GMAIL.COM','consolattaimc','CONSOLATA', '' , '' ,'190.96.237.129','2015-09-30','11:06:40','','0000-00-00','5','0','','0');
INSERT INTO logs VALUES('286','MFANYANNY@HOTMAIL.COM','Godandpsicolove1025','MARIA FANYANNY', '' , '' ,'186.170.219.91','2015-10-04','21:25:44','F','1996-07-25','1','1','','0');
INSERT INTO logs VALUES('287','VANNEKZ@HOTMAIL.COM','skydbskconmblaq','VANNEZA ALONSO', '' , '' ,'186.170.212.189','2015-10-05','12:06:29','F','1997-05-27','1','1','300 8283559','0');
INSERT INTO logs VALUES('295','BETANCOURT1102@HOTMAIL.COM','27113430102','MARIAM BETTANCOUR', '' , '' ,'161.10.97.187','2015-11-03','13:05:35','F','2001-08-18','1','4','300807517','1');
INSERT INTO logs VALUES('316','FREDI_AMAYA@HOTMAIL.COM','fredyamaya','FREDY AMAYA', '' , '' ,'190.253.27.39','2016-01-26','12:00:00','M','1998-10-31','1','0','311 557528','1');
INSERT INTO logs VALUES('317','3183235626','Marinarodriguez12','JENNIFER PARRA', '' , '' ,'190.68.51.1','2016-01-26','12:01:02','F','1997-01-30','1','1','318 3235626','0');
INSERT INTO logs VALUES('318','GABYAT31@HOTMAIL.COM','317870gat','GABRIELA ANDRADE', '' , '' ,'186.113.227.197','2016-01-26','17:36:17','F','2001-12-31','1','4','317 8703915','1');
INSERT INTO logs VALUES('320','LAURAXIME-1999@HOTMAIL.COM','lauraxi1222','LAURA HERNANDEZ', '' , '' ,'190.69.49.236','2016-01-26','17:58:21','M','1998-08-17','1','2','318 3036664 317 7881005 317 7811005 320 4452109 301 7510077 264995f4','0');
INSERT INTO logs VALUES('333','VALENSOCCER11@HOTMAIL.COM','medicina27','VALENTINA SANDOVAL', '' , '' ,'179.33.123.134','2016-01-28','12:59:05','F','2002-01-04','1','3','304 328138','1');
INSERT INTO logs VALUES('335','DANICAOSO','noqueriaengañarte','DANIELA CASTRO', '' , '' ,'186.114.244.29','2016-01-28','17:43:20','F','1999-06-01','1','2','322 4785701','0');
INSERT INTO logs VALUES('338','ANARAMIREZT0@GMAIL.COM','nomolestar11','ANA KATHERINNE RAMIREZ', '' , '' ,'161.10.103.162','2016-01-28','17:52:46','F','1997-12-20','1','3','320 8175654','0');
INSERT INTO logs VALUES('339','TAN-NATURAL2013@HOTMAIL.COM','mejoramiga','LUISA FERNANDA CRUZ', '' , '' ,'181.59.45.207','2016-01-28','17:54:00','F','1999-11-09','1','0','317 5725900 311 2402728 ','0');
INSERT INTO logs VALUES('340','anaramirezt0@gmail.com','nomolestar11', '' , '' , '' ,'161.10.103.162','2016-01-28','17:54:26', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('341','3163013195','123lau123','LAURA RODRIGUEZ', '' , '' ,'152.201.210.78','2016-01-28','17:54:29','F','1988-11-04','1','3','3163013195','0');
INSERT INTO logs VALUES('342','LINAGO13@HOTMAIL.COM','gomezgoma','LINA RUIZ', '' , '' ,'186.113.224.88','2016-01-28','18:13:26','F','1995-12-11','1','0','321 4738466 - 321 3666828','0');
INSERT INTO logs VALUES('343','linago13@hotmail.com','gomezgoma', '' , '' , '' ,'186.113.224.88','2016-01-28','18:16:08', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('347','NATALIASEGURATRIANA@HOTMAIL.COM','diegoysandra','NATALIA SEGURA TRIANA', '' , '' ,'191.102.204.10','2016-01-28','18:54:38','F','2004-12-08','1','0','314 2025951 - 313 7907487','0');
INSERT INTO logs VALUES('348','LAURITA.CHARRY@HOTMAIL.COM','juanjose','LAURA CAMILA CHARRY', '' , '' ,'181.55.65.132','2016-01-28','19:00:11','F','1997-07-16','1','2','320 4780996','0');
INSERT INTO logs VALUES('349','laurita.charry@hotmail.com','juanjose', '' , '' , '' ,'181.55.65.132','2016-01-28','19:02:07', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('350','LUISALACHE26@HOTMAIL.COM','luisalache12345','LUISA LACHE', '' , '' ,'191.148.54.68','2016-01-28','19:55:39','F','2000-11-26','1','5','317 5505134','0');
INSERT INTO logs VALUES('351','MONICA.PRINS@HOTMAIL.COM','davidmesa','MONICA BOLIVAR', '' , '' ,'186.115.233.200','2016-01-28','20:25:20','F','1998-12-24','1','2','0','0');
INSERT INTO logs VALUES('352','tan-natural2013@hotmail.com','mejoramiga', '' , '' , '' ,'190.253.18.243','2016-01-28','21:51:51', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('354','VALENTINA_727@HOTMAIL.COM','joujonas','VALENTINA MORALES', '' , '' ,'191.110.181.15','2016-01-29','17:53:29','F','2000-11-14','1','1','301 2135457 - 304 3968509','0');
INSERT INTO logs VALUES('355','valentina_727@hotmail.com','joujonas', '' , '' , '' ,'191.110.181.15','2016-01-29','17:54:30', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('362','MATADOR-10AGOSTO@HOTMAIL.COM','10251121fenndo','LUIS MARTIN', '' , '' ,'177.252.142.149','2016-02-05','11:45:37','M','1996-08-10','2','0','311 5384343 320 2880303','0');
INSERT INTO logs VALUES('364','LUFEDANI_1314@HOTMAIL.ES','teamojuandavid2619','Luisa Hernandez', '' , '' ,'181.53.47.6','2016-02-05','11:48:40','F','2000-04-26','1','0','313 3780246 322 3511313 ','0');
INSERT INTO logs VALUES('365','ROCHI19MARZO@HOTMAIL.COM','rosalbarengifocruz','ROSALBA RENGIFO CRUZ', '' , '' ,'186.113.68.217','2016-02-05','11:48:59','F','1971-03-19','2','0','311 5384343','0');
INSERT INTO logs VALUES('368','VERONIK.1204@HOTMAIL.COM','3102369116j','JULIETH OLAYA', '' , '' ,'186.84.116.81','2016-02-05','11:50:21','F','2000-04-12','1','2','310 2369116','0');
INSERT INTO logs VALUES('375','YISE525@HOTMAIL.COM','tolimamipasion03','GUISELLA RODRIGUEZ', '' , '' ,'66.249.88.248','2016-02-05','14:56:20','F','1998-05-25','1','3','','0');
INSERT INTO logs VALUES('376','TATIANAPALACIIO','inside','Tatiana Palacio', '' , '' ,'190.65.89.98','2016-02-05','15:04:50','F','1997-05-06','1','2','311 5302651 313 2159059','0');
INSERT INTO logs VALUES('377','YEIMI1033@HOTMAIL.COM','3102519625','Karon Huertas', '' , '' ,'179.32.2.219','2016-02-05','15:57:13','F','2000-05-28','1','0','310 2519625','0');
INSERT INTO logs VALUES('378','jeka.ezpiinoza.9@facebook.com','rubielacapera12','JESICA ESPINOZA', '' , '' ,'191.111.185.168','2016-02-05','16:15:07','F','1997-05-12','1','3','314 5482721 312 2881071','0');
INSERT INTO logs VALUES('379','ANGIE_RAMIREZ09@HOTMAIL.COM','MINNYTEAMOAMORDEMIVIDA','Angie Ramirez', '' , '' ,'190.253.17.208','2016-02-05','18:07:06','F','1999-12-01','1','0','322 2545107','0');
INSERT INTO logs VALUES('381','Y.ULY30@LIVE.COM','tueresmiet','Maju VIllageois', '' , '' ,'161.10.158.200','2016-02-05','19:37:07','M','1999-04-09','1','1','301 3381259 320 3810345','0');
INSERT INTO logs VALUES('386','GABY.ANDRADE.TRUJILLO@GMAIL.COM','gaby123456','GABRIELA ANDRADE MAIL', '' , '' ,'190.68.52.253','2016-02-10','21:35:15','F','2001-12-31','1','3','','1');
INSERT INTO logs VALUES('391','LUIS_ALBEIRO06@HOTMAIL.COM','prostarnew','LUIS ALBEIRO CEBALLOS', '' , '' ,'191.66.250.192','2016-03-24','16:58:09','M','0000-00-00','1','0','','0');
INSERT INTO logs VALUES('392','VANESACHAGUALA15@GMAIL.COM ','laurachaguala15','LAURA CHAGUALA', '' , '' ,'190.65.20.209','2016-03-28','17:49:38','F','2000-03-28','1','2','','0');
INSERT INTO logs VALUES('396','CAMILOM_DEPORTESTOLIMA@HOTMAIL.COM','deportestolima1954','CAMILO MAHECHA', '' , '' ,'161.10.115.47','2016-03-30','12:05:04','F','1999-09-30','1','0','321 4501143','1');
INSERT INTO logs VALUES('399','SEBAS.ORTIIZ.1','395272621996sebastian','SEBASTIAN ORTIZ', '' , '' ,'179.33.113.91','2016-04-09','11:02:51','M','0000-00-00','1','0','','0');
INSERT INTO logs VALUES('400','3124587365','13 por siempre y para siempre','NICOL DAYANA PLAZAS', '' , '' ,'161.10.129.34','2016-04-12','10:51:15','F','2000-02-01','1','3','3124587365','1');
INSERT INTO logs VALUES('402','CATA_LINA06@HOTMAIL.COM','catalinagonzalez0611','Catalina Gonzalez', '' , '' ,'190.255.172.55','2016-04-12','13:14:54','F','2002-11-06','1','3','','1');
INSERT INTO logs VALUES('405','MILLOS-B8@HOTMAIL.COM','andresblandon999','ANDRES BLANDON', '' , '' ,'186.114.245.191','2016-05-06','14:47:57','M','1999-05-26','1','0','314 2582371','1');
INSERT INTO logs VALUES('406','gabyat31@hotmail.com','317870gat', '' , '' ,'1','152.201.180.85','2016-05-06','15:08:51', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('407','PAO-PALOMAES@HOTMAIL.COM','tkmtata','Paola Andrea Gonzalez', '' , '' ,'85.54.178.232','2016-05-06','18:08:46','F','2001-06-02','1','3','+34 681 04 28 42','1');
INSERT INTO logs VALUES('408','pao-palomaes@hotmail.com','tkmtata', '' , '' , '' ,'85.54.178.232','2016-05-06','18:13:11', '' , '' , '' , '' , '' , '' );
INSERT INTO logs VALUES('409','CESARORTIZ-010@HOTMAIL.COM','2672487DANGER','Cesar Ortiz', '' , '' ,'179.33.118.249','2016-05-06','18:17:18','M','2000-03-10','1','0','313 4322973','1');
INSERT INTO logs VALUES('410','SHIRLYDCRUZ@HOTMAIL.COM','dayana28','SHIRLY CRUZ', '' , '' ,'190.66.214.221','2016-05-11','11:29:23','F','2003-03-26','1','3','314 3032470','0');

 
 
 
CREATE TABLE `usuarios` (
  `ID` int(110) NOT NULL,
  `USER` char(20) COLLATE utf8_bin NOT NULL,
  `PASS` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin
 
 
INSERT INTO usuarios VALUES('21474836','admix','ee7684112788fd0c276ed1e2f02f53a9');

 
 
