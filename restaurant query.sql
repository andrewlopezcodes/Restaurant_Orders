use restaurant_db;

/*
Objective 1
Explore the items table
Your first objective is to better understand the items table by 
finding the number of rows in the table, the least and most 
expensive items, and the item prices within each category.
*/

-- Task 1. View the menu_items table and write a query to find the number of items on the menu
select 
	*
from menu_items;

select
	count(menu_item_id) as 'Number of Items'
from menu_items;

-- Task 2. What are the least and most expensive items on the menu?
select
	item_name,
    price
from menu_items
order by price desc
limit 1;
-- the most expensive item on the menu is Shrimp Scampi at $19.95
select
	item_name,
    price
from menu_items
order by price
limit 1;
-- the least expensive item on the menu is Edamame at $5.00

-- Task 3.  How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
select
	menu_item_id,
    item_name,
    category,
    price
from menu_items
where category = 'Italian'
order by price
limit 1;
-- The least expensive Italian dish is Spaghetti at $14.50

select
	menu_item_id,
    item_name,
    category,
    price
from menu_items
where category = 'Italian'
order by price desc
limit 1;
-- The most expensive Italian dish is Shrimp Scampi at $19.95
    
-- Task 4. How many dishes are in each category? What is the average dish price within each category?
select
	category as 'Category',
	count(category) as 'Number of Dishes in Category',
    round(avg(price), 2) as 'Avg Price'
from menu_items
group by 
	category
order by category desc;