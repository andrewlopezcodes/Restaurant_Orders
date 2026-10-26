use restaurant_db;

/*
Objective 1
EXPLOR THE ITMS TABLE
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
-- there are 32 items on the menu

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
/*
___________________________________________
Category | Number of Dishes | Avg Price
___________________________________________
Mexican	| 9                	|11.80
Italian	| 9					|16.75
Asian	| 8					|13.48
American| 6					|10.07
____________________________________________
*/


/*
Objective 2
EXPLORE THE ORDERS TABLE
Your second objective is to better understand the orders table 
by finding the date range, the number of items within each order, 
and the orders with the highest number of items.
*/