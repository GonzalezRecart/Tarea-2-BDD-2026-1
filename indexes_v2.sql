DROP INDEX IF EXISTS idx_orders_order_date_user_id;
DROP INDEX IF EXISTS idx_order_items_order_id;
DROP INDEX IF EXISTS idx_reviews_book_date_desc;
DROP INDEX IF EXISTS idx_orders_order_date_order_id;
DROP INDEX IF EXISTS idx_users_is_premium_user_id;
DROP INDEX IF EXISTS idx_books_genre_price_pubyear;
CREATE INDEX idx_orders_order_date_order_id
ON orders (order_date, order_id);

CREATE INDEX idx_orders_order_date_desc_user_id
ON orders (order_date DESC, user_id);

CREATE INDEX idx_reviews_book_date
ON reviews (book_id, review_date DESC);

CREATE INDEX idx_reviews_book_rating
ON reviews (book_id, rating);