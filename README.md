# SQL Sales Practice

A beginner-friendly SQL project improved gradually using a small sales dataset.

## Learning Progress

**Version 1:** Basic queries and aggregate functions  
**Version 2:** Filtering, sorting, and more aggregate practice  
**Version 3:** First two-table `INNER JOIN`  
**Version 4:** Combine `INNER JOIN` with `GROUP BY`  
**Version 5:** Filter grouped results with `HAVING`  
**Version 6:** Use `WHERE` and `HAVING` together

## Version 6 - WHERE vs HAVING Practice

Version 6 builds on the earlier grouped-sales query and shows the difference between filtering rows and filtering grouped results.

```sql
SELECT
    c.category_name,
    SUM(s.quantity * s.price) AS total_sales
FROM sales AS s
INNER JOIN categories AS c
    ON s.category = c.category_name
WHERE s.price >= 1000
GROUP BY c.category_name
HAVING SUM(s.quantity * s.price) > 5000
ORDER BY total_sales DESC;
```

### Concepts Practiced

- `WHERE` filters individual rows before grouping
- `GROUP BY` creates category groups
- `HAVING` filters the grouped results
- Reusing `INNER JOIN`, `SUM()`, and `ORDER BY`

Subqueries, CTEs, window functions, and multiple JOINs are intentionally left for later versions.
