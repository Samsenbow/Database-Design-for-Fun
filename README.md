## Database-Design-for-Fun
This is a simple database design project created for learning and practice purposes. I got the idea after watching Dr. Charles Severance’s videos on database and web design. Although this is not my main field, I wanted to try building a small database for fun and to better understand how relational databases work.


### DB number 01
I experimented with a small, hypothetical e-commerce dataset including customer name, address, the products they ordered, unit price for each product, quantity ordered, total amount/bill, order date, and order status.
Due to the nature of this data, some vertical duplication of string values for certain attributes is inevitable. It is also assumed that each customer has only one address. After organizing the data, I created three tables as follows:

- Customer – Stores customer information (ID, name, address).

- Orders – Stores order details (status, total amount, order date, and associated customer).

- OrderItems – Stores details of each product in an order (product name, unit price, quantity, and associated order).

**Relationships**

- A Customer can have multiple Orders (one-to-many).

- Each Order can contain multiple OrderItems (one-to-many).

Here’s a simple Entity-Relationship Diagram (ERD):
+----------------+     +----------------+     +---------------+
| Customer      |1    ∞| Orders |1      |    ∞| OrderItems    |
+----------------+     +----------------+     +---------------+
| customer_id PK |---->| order_id PK    |---->| product_id PK |
| name           |     | status         |     | product_name  |
| address        |     | order_total    |     | unit_price    |
+----------------+     | customer_id FK |     | quantity      |
                       | order_date     |     | order_id FK   |
                       +----------------+     +---------------+



+---------------+        +------------+        +------------+
|   Customer    |1      ∞|   Orders   |1      ∞| OrderItems |
+---------------+        +------------+        +------------+
| customer_id PK|------->| order_id PK|------->| product_id PK|
| name          |        | status     |        | product_name |
| address       |        | order_total|        | unit_price   |
+---------------+        | customer_id FK|     | quantity     |
                         | order_date    |     | order_id FK  |
                         +---------------+     +------------+


