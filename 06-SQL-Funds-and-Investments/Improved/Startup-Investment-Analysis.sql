-- Проект 06. Анализ данных о стартапах, венчурных фондах и инвестициях
-- Источник: учебные задания и описание схемы базы данных.
-- Запросы сгруппированы по тематике. Логика исходных решений сохранена.
-- Синтаксис: PostgreSQL-совместимый SQL.

-- 1. Количество закрывшихся компаний
-- COUNT подсчитывает строки, удовлетворяющие условию WHERE.
SELECT
    COUNT(*) AS closed_companies_count
FROM company
WHERE status = 'closed';


-- 2. Объём привлечённых средств новостными компаниями США
-- Выводится funding_total для каждой компании; сортировка по убыванию.
SELECT
    funding_total
FROM company
WHERE country_code = 'USA'
  AND category_code = 'news'
ORDER BY funding_total DESC;


-- 3. Сотрудники с аккаунтами, начинающимися на 'Silver'
-- Шаблон 'Silver%' ищет заданный префикс.
SELECT
    first_name,
    last_name,
    network_username
FROM people
WHERE network_username LIKE 'Silver%';


-- 4. Сотрудники, у которых аккаунт содержит 'money',
-- а фамилия начинается на 'K'. SELECT * возвращает все поля.
SELECT
    *
FROM people
WHERE network_username LIKE '%money%'
  AND last_name LIKE 'K%';


-- 5. Общий объём привлечённых инвестиций по странам регистрации компаний
-- Группировка по country_code и суммирование funding_total.
SELECT
    country_code,
    SUM(funding_total) AS total_funding
FROM company
GROUP BY country_code
ORDER BY total_funding DESC;


-- 6. Сотрудники и учебные заведения
-- LEFT JOIN сохраняет сотрудников, даже если сведения об образовании отсутствуют.
-- Написание instituition сохранено по исходному описанию и заданию.
SELECT
    p.first_name,
    p.last_name,
    e.instituition
FROM people AS p
LEFT JOIN education AS e
    ON e.person_id = p.id;


-- 7. Сумма сделок по приобретению компаний за наличные в 2011–2013 годах
-- Полуоткрытый интервал включает весь день 31.12.2013,
-- в том числе если acquired_at имеет тип timestamp.
SELECT
    SUM(price_amount) AS total_cash_acquisitions_usd
FROM acquisition
WHERE term_code = 'cash'
  AND acquired_at >= DATE '2011-01-01'
  AND acquired_at < DATE '2014-01-01';


-- 8. Топ-10 стран по среднему числу компаний, в которые инвестировали фонды
-- Учитываются фонды, основанные в 2010–2012 годах.
-- Страны с минимальным invested_companies = 0 исключаются.
-- Вторичная сортировка выполняется по country_code в лексикографическом порядке.
SELECT
    country_code,
    MIN(invested_companies) AS min_invested_companies,
    MAX(invested_companies) AS max_invested_companies,
    AVG(invested_companies) AS avg_invested_companies
FROM fund
WHERE founded_at BETWEEN DATE '2010-01-01' AND DATE '2012-12-31'
GROUP BY country_code
HAVING MIN(invested_companies) > 0
ORDER BY
    avg_invested_companies DESC,
    country_code ASC
LIMIT 10;
