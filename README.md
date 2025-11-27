# \# 📚 Library Management System (SQL)

# 

# A relational database project designed to manage library operations, including book tracking, member management, and overdue fine calculations. This project focuses on handling time-based logic and data integrity using MySQL.

# 

# \## 🧠 Key Technical Concepts (The Logic)

# 

# This project goes beyond basic CRUD operations by implementing specific business logic:

# 

# 1\.  \*\*Handling NULL Values:\*\*

# &nbsp;   \* The `return\_date` column is set to `NULL` by default.

# &nbsp;   \* \*\*Logic:\*\* If `return\_date` is `NULL`, the book is currently checked out (active loan). If it has a date, the transaction is closed.

# 

# 2\.  \*\*Time-Based Calculations (`DATEDIFF`):\*\*

# &nbsp;   \* The system automatically calculates overdue fines based on the difference between the `due\_date` and the actual `return\_date`.

# &nbsp;   \* Dynamic queries identify books that are currently overdue based on today's date (`CURRENT\_DATE`).

# 

# \## 📂 Project Structure

# 

# \* \*\*`schema.sql`\*\*: Creates tables (`Books`, `Members`, `Loans`) with specific constraints and default values.

# \* \*\*`seeds.sql`\*\*: Populates the database with test scenarios (e.g., a member who returned a book late vs. on time).

# \* \*\*`queries.sql`\*\*: Contains the logic scripts:

# &nbsp;   \* Finding currently active loans.

# &nbsp;   \* Calculating fines for returned books.

# &nbsp;   \* Identifying members with overdue books.

# 

# \## 👨‍💻 How to Use

# 

# 1\.  Clone the repository:

# &nbsp;   ```bash

# &nbsp;   git clone \[https://github.com/omannd/library\_management\_system\_sql.git](https://github.com/omannd/library\_management\_system\_sql)

# &nbsp;   ```

# 2\.  Open your SQL editor (MySQL Workbench, DBeaver, etc.).

# 3\.  Run \*\*`schema.sql`\*\* to initialize the database.

# 4\.  Run \*\*`seeds.sql`\*\* to load the scenario data.

# 5\.  Execute \*\*`queries.sql`\*\* to test the fine calculation logic.

# 

# 

