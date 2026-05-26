CREATE INDEX idx_orders_order_date_order_id
ON orders (order_date, order_id);

CREATE INDEX idx_orders_order_date_desc_user_id
ON orders (order_date DESC, user_id);

CREATE INDEX idx_reviews_book_date
ON reviews (book_id, review_date DESC);

CREATE INDEX idx_reviews_book_rating
ON reviews (book_id, rating);