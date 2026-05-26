-- Top Customers by Revenue

SELECT
    customer_id,
    SUM(sales_amount) AS total_spent,
    RANK() OVER (
        ORDER BY SUM(sales_amount) DESC
    ) AS customer_rank
FROM sales_fact
GROUP BY customer_id;
