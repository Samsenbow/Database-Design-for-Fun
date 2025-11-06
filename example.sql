SELECT Customer.name From Customer JOIN Orders ON
Customer.customer_id = Orders.customer_id
Where status = 'pending'

