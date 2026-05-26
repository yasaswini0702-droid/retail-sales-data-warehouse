# Star Schema Design

## Fact Table
sales_fact
- order_id
- customer_id
- product_id
- sales_amount

## Dimension Tables

dim_customer
- customer_id
- customer_name
- region

dim_product
- product_id
- category

dim_date
- order_date
- month
- year
