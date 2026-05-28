-- Materialized view to precompute monthly revenue by book.
DROP MATERIALIZED VIEW IF EXISTS monthly_book_revenue;
DROP MATERIALIZED VIEW IF EXISTS high_rated_books;
CREATE MATERIALIZED VIEW monthly_book_revenue AS
SELECT
    b.book_id,
    b.title,
    b.genre,
    DATE_TRUNC('month', o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b ON b.book_id = oi.book_id
GROUP BY b.book_id, b.title, b.genre, DATE_TRUNC('month', o.order_date);

-- Index to speed up month filters and ordering by revenue.
CREATE INDEX idx_monthly_book_revenue_month_revenue
    ON monthly_book_revenue USING btree (month, revenue DESC);
