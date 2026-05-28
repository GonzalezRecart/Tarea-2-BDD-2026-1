-- Four indexes chosen to improve the heaviest workload patterns.
-- 1) reviews by book_id and most recent review date
-- 2) orders filtered by order_date range and joined by order_id
-- 3) users filtered by premium status for premium order queries
-- 4) books filtered by genre, price, and publication_year

DROP INDEX IF EXISTS idx_orders_order_date_user_id;
DROP INDEX IF EXISTS idx_order_items_order_id;
DROP INDEX IF EXISTS idx_reviews_book_date_desc;
DROP INDEX IF EXISTS idx_orders_order_date_order_id;
DROP INDEX IF EXISTS idx_users_is_premium_user_id;
DROP INDEX IF EXISTS idx_books_genre_price_pubyear;
CREATE INDEX idx_reviews_book_date_desc
    ON reviews(book_id, review_date DESC);

CREATE INDEX idx_orders_order_date_order_id
    ON orders(order_date, order_id);

CREATE INDEX idx_users_is_premium_user_id
    ON users(is_premium, user_id);

CREATE INDEX idx_books_genre_price_pubyear
    ON books(genre, price, publication_year);
