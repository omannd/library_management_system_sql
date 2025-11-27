-- 1. Insert Books 
insert into Books (title, author, published_year, genre, stock_quantity) values 
('1984', 'George Orwell', 1949, 'Dystopian', 5),
('Harry Potter and the Sorcerer Stone', 'J.K. Rowling', 1997, 'Fantasy', 3),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Classic', 2);

-- 2. Insert Members 
insert into Members (first_name, last_name, email) values 
('Can', 'Yılmaz', 'can@mail.com'),
('Elif', 'Kaya', 'elif@mail.com'),
('Murat', 'Demir', 'murat@mail.com');

-- 3. Insert Loans 
insert into Loans (book_id, member_id, loan_date, due_date, return_date) 
values (1, 1, '2025-10-01', '2025-10-15', '2025-10-10');

insert into Loans (book_id, member_id, loan_date, due_date, return_date) 
values (2, 2, '2025-10-01', '2025-10-15', '2025-10-20');

insert into Loans (book_id, member_id, loan_date, due_date, return_date) 
values (3, 3, '2025-11-01', '2025-11-15', null);