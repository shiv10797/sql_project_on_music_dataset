use music_database;

/*1. Who is the senior most employee based on job title?
select * from employees;
select * from employees
order by title desc;

/*2. Which countries have the most Invoices?
select * from invoices;
select BillingCountry,count(*) as total_invoice from invoices
group by  BillingCountry
order by total_invoice desc;

/*3. What are top 3 values of total invoice?
select total from invoices
order by total desc
limit 3;

/*4. Which city has the best customers? We would like to throw a promotional Music
Festival in the city we made the most money. Write a query that returns one city that
has the highest sum of invoice totals. Return both the city name & sum of all invoice
totals
select * from invoices
select billingcity,sum(total) as t from invoices
group by billingcity
order by t desc
limit 1; 

 /*5. Who is the best customer? The customer who has spent the most money will be
declared the best customer. Write a query that returns the person who has spent the
most money
select customers.customerid,concat(firstname,lastname) as fullname,sum(total) as t from customers
join invoices on invoices.customerid=invoices.customerid
group by customerid
order by t desc;

/*6. Write query to return the email, first name, last name, & Genre of all Rock Music
listeners. Return your list ordered alphabetically by email starting with A
select * from genres;
select distinct email,concat(firstname,lastname) as fullname,genres.name from customers
join invoices on  invoices.customerid=customers.customerid
join invoicelines on invoicelines.invoiceid=invoices.invoiceid
join tracks on tracks.trackid=invoicelines.trackid
join genres on genres.genreid=tracks.genreid
where genres.name like 'rock'
order by email;


/*7. Let's invite the artists who have written the most rock music in our dataset. Write a
query that returns the Artist name and total track count of the top 10 rock bands
select * from artists;
select artists.artistid as id,artists.name,count(artists.artistid) as number_of_song 
from artists
join albums on albums.artistid=artists.artistid
join tracks on tracks.albumid=albums.albumid
join genres on genres.genreid=tracks.genreid
where genres.name like 'rock'
group by id
order by number_of_song desc
limit 10;


/*8. Return all the track names that have a song length longer than the average song length.
Return the Name and Milliseconds for each track. Order by the song length with the
longest songs listed first
select name,Milliseconds as song_lenght from tracks
where Milliseconds > (select avg(Milliseconds) from tracks)
order by song_lenght desc;





















/