-- Workload for group 2 using the materialized view high_rated_books
-- for the repeated COUNT(*) queries.

-- ===== 001 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Path %'
ORDER BY title LIMIT 25;

-- ===== 002 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 5946
ORDER BY review_date DESC LIMIT 20;

-- ===== 003 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 23168
ORDER BY review_date DESC LIMIT 20;

-- ===== 004 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-11-08' AND o.order_date < '2024-11-15'
ORDER BY o.order_date DESC;

-- ===== 005 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'xiomara.zhang26601@mail.com';

-- ===== 006 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Burie%'
ORDER BY title LIMIT 25;

-- ===== 007 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'greta.davidson165297@mail.com';

-- ===== 008 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('INES.QUIROGA39597@BOOKS.IO');

-- ===== 009 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 010 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Daugh%'
ORDER BY title LIMIT 25;

-- ===== 011 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-09-01' AND o.order_date < '2021-10-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 012 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 17766
ORDER BY review_date DESC LIMIT 20;

-- ===== 013 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Hollo%'
ORDER BY title LIMIT 25;

-- ===== 014 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'fatima.petrov17468@books.io';

-- ===== 015 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'wei.davidson146102@books.io';

-- ===== 016 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Froze%'
ORDER BY title LIMIT 25;

-- ===== 017 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 27030 AND warehouse_id = 7;

-- ===== 018 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2023-11-22' AND o.order_date < '2023-11-29'
ORDER BY o.order_date DESC;

-- ===== 019 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 020 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2024-06-01' AND o.order_date < '2024-07-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 021 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 21345
ORDER BY review_date DESC LIMIT 20;

-- ===== 022 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 18029
ORDER BY review_date DESC LIMIT 20;

-- ===== 023 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'reference'
  AND price BETWEEN 5 AND 40
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 024 =====
SELECT b.genre, DATE_TRUNC('month', o.order_date) AS month,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2022-12-01' AND o.order_date < '2023-12-01'
GROUP BY b.genre, DATE_TRUNC('month', o.order_date)
ORDER BY month, revenue DESC;

-- ===== 025 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2022-01-01' AND o.order_date < '2022-02-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 026 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Ghost%'
ORDER BY title LIMIT 25;

-- ===== 027 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'self-help'
  AND price BETWEEN 20 AND 40
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 028 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Ember%'
ORDER BY title LIMIT 25;

-- ===== 029 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-09-08' AND o.order_date < '2021-09-15'
ORDER BY o.order_date DESC;

-- ===== 030 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 031 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 032 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('PABLO.VARGAS195523@SHOP.NET');

-- ===== 033 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2024-03-01' AND o.order_date < '2024-04-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 034 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-03-01' AND o.order_date < '2021-04-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 035 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-01-01' AND o.order_date < '2021-02-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 036 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Dream%'
ORDER BY title LIMIT 25;

-- ===== 037 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 24541
ORDER BY review_date DESC LIMIT 20;

-- ===== 038 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-03-22' AND o.order_date < '2021-03-29'
ORDER BY o.order_date DESC;

-- ===== 039 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 15546
ORDER BY review_date DESC LIMIT 20;

-- ===== 040 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-09-01' AND o.order_date < '2021-10-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 041 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Guest%'
ORDER BY title LIMIT 25;

-- ===== 042 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'hiro.quiroga95104@mail.com';

-- ===== 043 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-01-01' AND o.order_date < '2021-02-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 044 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('ARTURO.IVANOV102380@SHOP.NET');

-- ===== 045 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Noah.ferreira6101@shop.net';

-- ===== 046 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2023-11-15' AND o.order_date < '2023-11-22'
ORDER BY o.order_date DESC;

-- ===== 047 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-12-22' AND o.order_date < '2021-12-29'
ORDER BY o.order_date DESC;

-- ===== 048 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2022-07-01' AND o.order_date < '2022-08-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 049 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2023-02-01' AND o.order_date < '2023-03-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 050 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 15972
ORDER BY review_date DESC LIMIT 20;

-- ===== 051 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 052 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 12037
ORDER BY review_date DESC LIMIT 20;

-- ===== 053 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Pablo.moreno158262@mail.com';

-- ===== 054 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2024-09-01' AND o.order_date < '2024-10-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 055 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'farid.davidson143333@books.io';

-- ===== 056 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'self-help'
  AND price BETWEEN 10 AND 30
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 057 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-11-01' AND o.order_date < '2021-12-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 058 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'poetry'
  AND price BETWEEN 5 AND 50
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 059 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'self-help'
  AND price BETWEEN 5 AND 30
  AND publication_year >= 2020
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 060 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2024-08-01' AND o.order_date < '2024-09-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 061 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 4832 AND warehouse_id = 8;

-- ===== 062 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'dania.ivanov131603@example.org';

-- ===== 063 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 20374 AND warehouse_id = 6;

-- ===== 064 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 065 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 066 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-06-08' AND o.order_date < '2021-06-15'
ORDER BY o.order_date DESC;

-- ===== 067 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 20052
ORDER BY review_date DESC LIMIT 20;

-- ===== 068 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-03-01' AND o.order_date < '2021-03-08'
ORDER BY o.order_date DESC;

-- ===== 069 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'kiri.moreno101852@shop.net';

-- ===== 070 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 21786
ORDER BY review_date DESC LIMIT 20;

-- ===== 071 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2023-09-01' AND o.order_date < '2023-10-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 072 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2024-10-01' AND o.order_date < '2024-11-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 073 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'dania.brooks46548@books.io';

-- ===== 074 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'mystery'
  AND price BETWEEN 20 AND 25
  AND publication_year >= 2020
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 075 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Thron%'
ORDER BY title LIMIT 25;

-- ===== 076 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'biography'
  AND price BETWEEN 5 AND 50
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 077 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Crims%'
ORDER BY title LIMIT 25;

-- ===== 078 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 9669
ORDER BY review_date DESC LIMIT 20;

-- ===== 079 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2023-06-01' AND o.order_date < '2023-07-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 080 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 6823
ORDER BY review_date DESC LIMIT 20;

-- ===== 081 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('DANIEL.VARGAS132486@SHOP.NET');

-- ===== 082 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'history'
  AND price BETWEEN 10 AND 50
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 083 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'The L%'
ORDER BY title LIMIT 25;

-- ===== 084 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2023-02-01' AND order_date < '2023-03-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 085 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2024-11-01' AND order_date < '2024-12-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 086 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'romance'
  AND price BETWEEN 10 AND 40
  AND publication_year >= 2021
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 087 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'science'
  AND price BETWEEN 10 AND 30
  AND publication_year >= 2020
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 088 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2022-01-01' AND o.order_date < '2022-02-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 089 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'pablo.quiroga182042@books.io';

-- ===== 090 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 12246
ORDER BY review_date DESC LIMIT 20;

-- ===== 091 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 1624 AND warehouse_id = 8;

-- ===== 092 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 27308
ORDER BY review_date DESC LIMIT 20;

-- ===== 093 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2021-03-01' AND o.order_date < '2021-04-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 094 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2021-11-15' AND o.order_date < '2021-11-22'
ORDER BY o.order_date DESC;

-- ===== 095 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('OLGA.IVANOV97365@MAIL.COM');

-- ===== 096 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 14153
ORDER BY review_date DESC LIMIT 20;

-- ===== 097 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 29831 AND warehouse_id = 2;

-- ===== 098 =====
SELECT COUNT(*)
FROM high_rated_books;

-- ===== 099 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-12-01' AND o.order_date < '2024-12-08'
ORDER BY o.order_date DESC;

-- ===== 100 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 7495
ORDER BY review_date DESC LIMIT 20;
