-- Four indexes chosen to improve the heaviest workload patterns.
-- 1) reviews by book_id and most recent review date
-- 2) orders filtered by order_date range and joined to users
-- 3) order_items joined from orders by order_id
-- 4) books filtered by genre, price, and publication_year

CREATE INDEX idx_reviews_book_date_desc
    ON reviews(book_id, review_date DESC);

CREATE INDEX idx_orders_order_date_user_id
    ON orders(order_date DESC, user_id);

CREATE INDEX idx_order_items_order_id
    ON order_items(order_id);

CREATE INDEX idx_books_genre_price_pubyear
    ON books(genre, price, publication_year);
