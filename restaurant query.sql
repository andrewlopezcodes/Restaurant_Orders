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


Task 5. View the order_details table. What is the date range of the table?
 */
 select 
	* 
from order_details;

 select 
	min(order_date) as 'Oldest Date',
    max(order_date) as 'Most Recent Date'
from order_details;
/*
The date range of the table is 2023-01-01 - 2023-03-31.


Task 6. How many orders were made within this date range? 
How many items were ordered within this date range?
*/

select
	count(order_date)
from order_details;
-- There were 12234 orders made within the date range of 2023-01-01 - 2023-03-31.

select count(item_id) from order_details;
-- There were 12097 items ordered within the date range of 2023-01-01 - 2023-03-31.

-- Task 7. Which orders had the most number of items?
select
	order_id,
    count(order_id) as 'Items in Order'
from order_details
group by order_id
order by count(order_id) desc;

/*
_____________________________
order_id	| Items in Order
_____________________________
330			|	14
440			|	14
443			|	14
1957		|	14
2675		|	14
3473		|	14
4305		|	14
4482		|	14
*/

-- Task 8. How many orders had more than 12 items?
select
	order_id,
    count(order_id) as 'Items in Order'
from order_details
group by order_id
having count(order_id) > 12
order by count(order_id) desc;

/* 23 orders have more that 12 items
_____________________________
order_id	| Items in Order
_____________________________
330			|	14
440			|	14
443			|	14
1957		|	14
2675		|	14
3473		|	14
4305		|	14
4482		|	14
740			|	13
1274		|	13
1569		|	13
1685		|	13
1734		|	13
2075		|	13
2126		|	13
2188		|	13
2725		|	13
3292		|	13
3583		|	13
4623		|	13
4836		|	13
5066		|	13
5200		|	13
*/