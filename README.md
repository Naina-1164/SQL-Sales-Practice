# SQL Sales Practice

A beginner-friendly SQL project improved gradually using a small sales dataset.

## Learning Progress

**Version 1:** Basic queries and aggregate functions  
**Version 2:** Filtering, sorting, and more aggregate practice  
**Version 3:** First two-table `INNER JOIN`  
**Version 4:** Combine `INNER JOIN` with `GROUP BY`

## Version 4 - JOIN + GROUP BY

Version 4 answers a simple business question: **What is the total sales value for each category?**

The query joins `sales` with `categories`, calculates `quantity * price`, groups the result by category, and sorts total sales from highest to lowest.

### Concepts Practiced

- Reusing `INNER JOIN`
- `SUM()`
- `GROUP BY`
- `ORDER BY`
- Table aliases
- Turning a simple business question into a SQL query

Subqueries, CTEs, window functions, and multiple JOINs are intentionally left for later versions.
