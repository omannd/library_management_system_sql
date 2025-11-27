select
    m.first_name, 
    m.last_name, 
    b.title, 
    l.loan_date, 
    l.due_date
from Loans l
join Members m on l.member_id = m.member_id
join Books b on l.book_id = b.book_id
where l.return_date is null;

select 
    m.first_name, 
    b.title, 
    l.due_date, 
    l.return_date,
    DATEDIFF(l.return_date, l.due_date) as overdue_days, 
    (DATEDIFF(l.return_date, l.due_date) * 2.00) as fine_amount 
from Loans l
join Members m on l.member_id = m.member_id
join Books b on l.book_id = b.book_id
WHERE l.return_date > l.due_date; 

select
    m.first_name, 
    b.title, 
    l.due_date,
    datediff(current_date, l.due_date) as days_passed_overdue
from Loans l
join Members m on l.member_id = m.member_id
join Books b on l.book_id = b.book_id
where l.return_date is null 
and l.due_date < current_date; 