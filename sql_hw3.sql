-- question 1
select customer.first_name, customer.last_name, district
from customer
full join address
on customer.address_id = address.address_id
where district = 'Texas';
-- Jennifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, Ian Still

-- question 2
select customer.first_name, customer.last_name, amount
from customer
full join payment
on customer.customer_id = payment.customer_id
where amount > 6.99;
-- many results

-- question 3
select first_name, last_name  
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id, amount
	having amount > 175
);
-- Mary Smith, Douglas Graf

-- question 4
select customer.first_name, customer.last_name, country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id
full join country
on city.country_id = country.country_id
where country = 'Nepal';
-- Kevin Schuler

-- question 5
select staff_id, count(staff_id)  
from rental
group by staff_id
order by count(staff_id) desc;
-- staff_id 1 had 8040 rentals

-- question 6
select rating, count(rating)
from film
group by rating
order by rating;
-- G has 178, PG 194, PG-13 223, R 196, NC-17 209

-- question 7
select first_name, last_name  
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id, amount
	having amount > 6.99
);
-- Mary Smith, Peter Menard, Harold Martino, Douglas Graf, Alvin Deloach, Alfredo Mcadams

-- question 8
select count(amount) 
from payment
where amount = 0
-- none

