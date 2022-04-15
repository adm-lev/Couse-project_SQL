USE inventory1;


INSERT users(login) 
VALUES ('e.lavrenko'),('v.kulikov'),('a.kogan'),
('a.ivanov'),('a.budnikov'),('y.dubitskiy'),
('a.totaev'),('o.turkina'),('n.emikh'),('k.samsonova');


INSERT departments(name) 
VALUES ('ИТ'),('Бухгалтерия'),('Служба безопасности'),
('Дирекция'),('Маркетинг'),('АХО'),('Водители');


INSERT profiles(user_id, firstname, lastname, thirdname, department_id, birthday_at) 
VALUES (1,'Евгений','Лавренко','Владимирович',6,'1988-05-31'),
(2,'Владимир','Куликов','Сергеевич',1,'1991-02-01'),
(3,'Андрей','Коган','Яковлевич',1,'1988-05-01'),
(4,'Артем','Иванов','Владимирович',1,'1990-06-28'),
(5,'Андрей','Будников','Иванович',1,'1988-05-01'),
(6,'Ярослав','Дубицкий','Вадимович',3,'1991-06-07'),
(7,'Антон','Тотаев','Юрьевич',7,'1987-09-28'),
(8,'Ольга','Туркина','Сергеевна',2,'1985-07-15'),
(9,'Натали','Эмих','Александровна',5,'1994-03-3'),
(10,'Кристина','Самсонова','Леонидовна',4,'1991-03-04');


INSERT software(name, version, license, info) 
VALUES ('Google Chrome','100','Free','Internet browser'),
('Winrar','4.0','Free','Архиватор'),
('7Zip','2021-12-26','Free','Архиватор'),
('Ms Outlook','2019','Corp.lic.','Почтовый клинет'),
('Ms Word','2019','Corp.lic.','Текстовый редактор'),
('Ms Excell','2019','Corp.lic.','Работа с таблицами'),
('Telegram','3.6.1','Free','Меседжер'),
('Screenpics','0.15.2','Free','Скриншотер'),
('Крипто Про CSP','3.9','232792794','Криптопровайдер'),
('Foxit Reader','10.1.3.37598','Free','PDF reader');


INSERT workstations(hostname, user_id, cpu, ram, hdd, motherboard) 
VALUES ('elavrenko','1','i7','16Gb','500','Asus'),
('vkulikov','2','i7','16Gb','500','Tyan'),
('akogan','3','i7','16Gb','500','Dell'),
('aivanov','4','i7','16Gb','500','Biostar'),
('abudnikov','5','i7','16Gb','500','PC Partner'),
('ydubitskiy','6','i7','16Gb','500','Asrock'),
('atotaev','7','i7','16Gb','500','Albatron'),
('oturkina','8','i7','16Gb','500','Gigabyte'),
('nemikh','9','i7','16Gb','500','MSI'),
('ksamsonova','10','i7','16Gb','500','SuperMicro');


# TRUNCATE TABLE certificates;
INSERT certificates(owner_id, release_date, end_date, info) 
VALUES (10,'2021-02-01','2023-02-01','ТАКСКОМ'),
 (NULL,NULL,NULL,'Не требуется'),
 (8,'2021-02-01','2023-02-01','ММВБ'),
 (5,'2021-02-01','2023-02-01','Инфотекс');

# TRUNCATE TABLE installed;
INSERT installed(soft_id, pc_id, cert_id, info) 
VALUES (1,1,2,'Стандартный браузер'),
(1,2,2,'Стандартный браузер'),(2,2,2,'Стандартный архиватор'),(9,10,1,'Крипто ПО'),
(1,4,2,'Стандартный браузер'),(2,4,2,'Стандартный архиватор'),(9,5,4,'Крипто ПО'),
(1,5,2,'Стандартный браузер'),(2,5,2,'Стандартный архиватор'),(9,8,3,'Крипто ПО'),
(1,6,2,'Стандартный браузер'),(2,6,2,'Стандартный архиватор'),(9,1,1,'Крипто ПО'),
(1,7,2,'Стандартный браузер'),(2,7,2,'Стандартный архиватор'),
(1,8,2,'Стандартный браузер'),(3,8,2,'Нестандартный архиватор'),
(1,9,2,'Стандартный браузер'),(3,9,2,'Нестандартный архиватор'),
(1,10,2,'Стандартный браузер'),(3,10,2,'Нестандартный архиватор'),
(1,3,2,'Стандартный браузер'),(3,3,2,'Нестандартный архиватор');

# TRUNCATE TABLE printers;
INSERT printers(model, department_id, last_service_date) 
VALUES ('Aficio mp301',6,NULL),
('Aficio mp201',1,NULL),
('Aficio mp301',2,NULL),
('Aficio mp201',4,NULL),
('Aficio mp301',5,NULL);

# TRUNCATE TABLE warehouse;
INSERT warehouse(type, model, quantity) 
VALUES ('Гарнитура','Defender','10'),
('Монитор','Dell 2717hb','7'),
('Стул','табуретка','15'),
('Батаерйки','Duracell','150'),
('Флешка','Kingston 16Gb','0');

# TRUNCATE TABLE orders;
INSERT orders(model_id, salesman, quantity) 
VALUES (5, 'Комус','10'),
(2, 'Комус','3'),
(1, 'Комус','2'),
(4, 'Комус','20');




