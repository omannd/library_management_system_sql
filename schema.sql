create database libraryDB;
use libraryDB;

-- 1. Books Table
create table books(
	book_id int auto_increment primary key,
    title varchar(150) not null,
    author varchar(100),
    published_year int,
    genre varchar(50),
    stock_quantity int default 1
);

-- 2. Members Table
create table members(
	member_id int auto_increment primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(100) unique,
    join_date date default(current_date)
);

-- 3. Loans Table
create table loans(
	loan_id int auto_increment primary key,
    book_id int,
    member_id int,
    loan_date date default(current_date),
    due_date date not null,
    return_date date default null,
    foreign key (book_id) references books(book_id),
    foreign key (member_id) references members(member_id)
);