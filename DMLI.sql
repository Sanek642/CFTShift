USE cft;

insert into tarifs values ('Тариф за выдачу кредита', 10);
insert into tarifs values ('Тариф за открытие счета', 10);
insert into tarifs values ('Тариф за обслуживание карты', 10);

insert into productype values ('КРЕДИТ', CAST('01.01.2018' AS DATE), null, 1);
insert into productype values ('ДЕПОЗИТ', CAST('01.01.2018' AS DATE), null, 2);
insert into productype values ('КАРТА', CAST('01.01.2018' AS DATE), null, 3);

insert into clients values ('Сидоров Иван Петрович', 'Россия, Московская облать, г. Пушкин', CAST('01.01.2001' AS DATE), 'Россия, Московская облать, г. Пушкин, ул. Грибоедова, д. 5', '2222 555555, выдан ОВД г. Пушкин, 10.01.2015');
insert into clients values ('Иванов Петр Сидорович', 'Россия, Московская облать, г. Клин', CAST('01.01.2001' AS DATE), 'Россия, Московская облать, г. Клин, ул. Мясникова, д. 3', '4444 666666, выдан ОВД г. Клин, 10.01.2015');
insert into clients values ('Петров Сиодр Иванович', 'Россия, Московская облать, г. Балашиха', CAST('01.01.2001' AS DATE), 'Россия, Московская облать, г. Балашиха, ул. Пушкина, д. 7', '5555 666666, выдан ОВД г. Клин, 10.01.2015');


insert into products values (1, 'Кредитный договор с Сидоровым И.П.', 1, CAST('01.06.2015' AS DATE), null);
insert into products values (2, 'Депозитный договор с Ивановым П.С.', 2, CAST('01.08.2017' AS DATE), null);
insert into products values (3, 'Карточный договор с Петровым С.И.', 3, CAST('01.08.2017' AS DATE), null);


insert into accounts values ('Кредитный счет для Сидоровым И.П.', -2000, 1, CAST('01.06.2015' AS DATE), null, 1, '45502810401020000022');
insert into accounts values ('Депозитный счет для Ивановым П.С.', 6000, 2, CAST('01.08.2017' AS DATE), null, 2, '42301810400000000001');
insert into accounts values ('Карточный счет для Петровым С.И.', 8000, 3, CAST('01.08.2017' AS DATE), null, 3, '40817810700000000001');


insert into records values (1, 5000, 1, CAST('01.06.2015' AS DATE));
insert into records values (0, 1000, 1, CAST('01.07.2015' AS DATE));
insert into records values (0, 2000, 1, CAST('01.08.2015' AS DATE));
insert into records values (0, 3000, 1, CAST('01.09.2015' AS DATE));
insert into records values (1, 5000, 1, CAST('01.10.2015' AS DATE));
insert into records values (0, 3000, 1, CAST('01.10.2015' AS DATE));

insert into records values (0, 10000, 2, CAST('01.08.2017' AS DATE));
insert into records values (1, 1000, 2, CAST('05.08.2017' AS DATE));
insert into records values (1, 2000, 2, CAST('21.09.2017' AS DATE));
insert into records values (1, 5000, 2, CAST('24.10.2017' AS DATE));
insert into records values (0, 6000, 2, CAST('26.11.2017' AS DATE));

insert into records values (0, 120000, 3, CAST('08.09.2017' AS DATE));
insert into records values (1, 1000, 3, CAST('05.10.2017' AS DATE));
insert into records values (1, 2000, 3, CAST('21.10.2017' AS DATE));
insert into records values (1, 5000, 3, CAST('24.10.2017' AS DATE));
insert into records values (1, 3333, 3, CAST('01.08.2022' AS DATE));
insert into records values (1, 1467, 3, CAST('03.08.2022' AS DATE));


--Дополнительные данные
insert into clients values ('Петров Семен Игоревич', 'Россия, Московская облать, г. Долгопрудный', CAST('01.01.2001' AS DATE), 'Россия, Московская облать, г. Долгопрудный, ул. Пушкина, д. 14', '3333 666666, выдан ОВД г. Долгопрудный, 10.01.2015');
insert into products values (2, 'Депозитный договор с Петровым С.И.', 4, CAST('01.08.2016' AS DATE), null);
insert into products values (1, 'Кредитный договор с Петровым С.И.', 4, CAST('01.06.2018' AS DATE), null);

insert into accounts values ('Депозитный счет для Петровым С.И.', 6000, 4, CAST('01.08.2016' AS DATE), null, 4, '42301810400000000002');
insert into accounts values ('Кредитный счет для Петровым С.И.', -20000, 4, CAST('01.06.2018' AS DATE), null, 5, '45502810401020000023');

insert into records values (0, 10000, 4, CAST('01.08.2016' AS DATE));
insert into records values (1, 1000, 4, CAST('05.08.2016' AS DATE));
insert into records values (1, 2000, 4, CAST('21.09.2016' AS DATE));
insert into records values (1, 5000, 4, CAST('24.10.2016' AS DATE));
insert into records values (0, 6000, 4, CAST('26.11.2016' AS DATE));
insert into records values (1, 3700, 4, CAST('24.10.2017' AS DATE));
insert into records values (1, 450, 4, CAST('24.10.2017' AS DATE));


insert into records values (1, 5000, 5, CAST('01.06.2018' AS DATE));
insert into records values (0, 1000, 5, CAST('01.07.2018' AS DATE));
insert into records values (0, 2000, 5, CAST('01.08.2018' AS DATE));
insert into records values (0, 3000, 5, CAST('01.09.2018' AS DATE));
insert into records values (1, 5000, 5, CAST('01.10.2018' AS DATE));
insert into records values (0, 3000, 5, CAST('01.10.2018' AS DATE));
insert into records values (1, 567, 5, CAST('01.08.2022' AS DATE));
insert into records values (1, 190, 5, CAST('03.08.2022' AS DATE));
insert into records values (1, 187, 5, CAST('03.08.2022' AS DATE));

insert into records values (0, 2000, 2, CAST('26.11.2017' AS DATE));
insert into records values (1, 4000, 2, CAST('26.11.2017' AS DATE));

insert into products values (1, 'Кредитный договор с Петровым С.И.', 4, CAST('01.06.2022' AS DATE), null)
insert into accounts values ('Кредитный счет для Петровым С.И.', -30000, 4, CAST('01.06.2022' AS DATE), null, 6, '45502810401020000024');

insert into records values (1, 30000, 6, CAST('01.06.2022' AS DATE));
insert into records values (0, 1000, 6, CAST('01.07.2022' AS DATE));
insert into records values (0, 2000, 6, CAST('01.08.2022' AS DATE));
insert into records values (0, 3000, 6, CAST('01.08.2022' AS DATE));
insert into records values (0, 5000, 6, CAST('01.08.2022' AS DATE));
insert into records values (0, 3000, 6, CAST('01.08.2022' AS DATE));
insert into records values (0, 2000, 6, CAST('01.08.2022' AS DATE));
insert into records values (0, 15000, 6, CAST('06.08.2022' AS DATE));