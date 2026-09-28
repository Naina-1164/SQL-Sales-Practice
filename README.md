# SQL Sales Practice

A beginner-friendly SQL project improved gradually using a small sales dataset.

## Learning Progress

**Version 1:** Basic queries and aggregate functions  
**Version 2:** Filtering, sorting, and more aggregate practice  
**Version 3:** First two-table `INNER JOIN`  
**Version 4:** Combine `INNER JOIN` with `GROUP BY`  
**Version 5:** Filter grouped results with `HAVING`

## Version 5 - First HAVING Practice

Version 5 builds directly on the category sales query from Version 4. It introduces `HAVING` to filter categories after their sales values have been grouped and calculated.

### Main Practice

The first query displays categories whose total sales are greater than ₹10,000.

```sql
SELECT
    c.category_name,
    SUM(s.quantity * s.price) AS total_sales
FROM sales AS s
INNER JOIN categories AS c
    ON s.category = c.category_name
GROUP BY c.category_name
HAVING SUM(s.quantity * s.price) > 10000
ORDER BY total_sales DESC;
```

A second beginner experiment changes the threshold to ₹5,000 so the result can be compared.

## Concepts Practiced

- Reusing `INNER JOIN`
- `SUM()`
- `GROUP BY`
- First use of `HAVING`
- `ORDER BY`
- Understanding that `HAVING` can filter grouped/aggregate results

Subqueries, CTEs, window functions, and multiple JOINs are intentionally left for later versions.
