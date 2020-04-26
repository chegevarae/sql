-- Копирование полностью всех данных из одной таблицы mysql в другую:

INSERT INTO `db`.`table_to`
SELECT *
FROM `db`.`table_from` ;

-- Если необходимо скопировать только некоторые столбцы, то применяем следующую конструкцию:

INSERT INTO `db`.`table_to` (`a1_2`, `a2_2`, `a3_2`, `a4_2`)
SELECT `a1`, `a2`, `a3`, `a4`
FROM `db`.`table_from` ;

-- Для копирования данных из одной таблицы MySQL в другую по условию:

INSERT INTO `db`.`table_to` (`a1_2`, `a2_2`, `a3_2`, `a4_2`)
SELECT `a1`, `a2`, `a3`, `a4`
FROM `db`.`table_from`
WHERE  `a2` < '2014-04-30 11:37:38';

-- db — имя базы.
-- table_to — таблица куда копируем.
-- table_from — таблица откуда копируем.