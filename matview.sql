-- Materialized view to precompute books with at least 10 reviews and average rating > 4.0.
DROP MATERIALIZED VIEW IF EXISTS high_rated_books;

CREATE MATERIALIZED VIEW high_rated_books AS
SELECT book_id
FROM reviews
GROUP BY book_id
HAVING COUNT(*) >= 10 AND AVG(rating) > 4.0;
