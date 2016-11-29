select * from products
JOIN categorized_products on categorized_products.product_id = products.id
JOIN categories on categorized_products.category_id = categories.id;