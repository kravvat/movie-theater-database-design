# 🎬 Movie Theater Database Design

A structured relational database project modeling a real-world movie theater system.

Built with PostgreSQL and designed to emphasize clarity, modular structure, and hands-on SQL practice.

---

## 🧱 Project Structure

```
SQL/
├── init/ # Initial database creation
├── schema/ # Table definitions
├── data/ # Data insertion + aggregate practice
├── updates/ # DML examples (UPDATE, DELETE, SELECT in DML)
├── queries/ # SELECT queries + JOIN/GROUP BY practice
├── playgrounds/ # Isolated SQL experiments
docs/
├── ERD diagram (.png)
├── Excel-based schema planning
```

---

## 🗃️ Tables

The schema contains:

- `theaters`: Cinema details (name, city)
- `auditoriums`: Screening rooms and properties
- `movies`: Movie catalog with genre and duration
- `clients`: Registered customers who book screenings
- `screenings`: Movie showings with timestamp and pricing
- `reservations`: Links clients to screenings and seats
- `seats`: Individual seats tied to auditoriums

Each table includes:
- Primary keys
- Foreign keys
- Constraints (`NOT NULL`, `CHECK`, `UNIQUE`)
- Data types such as `VARCHAR`, `BOOLEAN`, `TIMESTAMP`

---

## 🧠 SQL Concepts Practiced

- DDL: `CREATE TABLE`, `ALTER`, constraints
- DML: `INSERT`, `UPDATE`, `DELETE` (with `SELECT`)
- DQL: `SELECT` with `JOIN`, `GROUP BY`, `HAVING`
- Aggregates: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- Subqueries and nested `IN` statements
- Filtering (`LIKE`, `LOWER`, wildcards like `%term%`)

---

## 📸 Documentation

- ✅ **ERD**: Included in `docs/movie_theater_database_erd.png`
- ✅ **Excel Table Plan**: `movie_theater_database_structure.xlsx`
- ✅ **Sample Queries**: All logic categorized in `SQL/queries` and `SQL/data`

---

## ⚙️ Setup

1. Clone the repository.
2. Initialize the database using `SQL/init/create_database.sql`.
3. Create all tables from `schema/create_all_tables.sql`.
4. Insert sample data from `data/insert_sample_data.sql`.
5. Explore and experiment in `queries/` or `playgrounds/`.

---

## 📍 Status

✅ Active learning project — ideal for SQL practice and interviews.

---

## 📚 License

This project is open for educational use. Attribution appreciated if reused.

---

## 🔗 Connect with me

- 💻 HackerRank: [kravvat_](https://www.hackerrank.com/profile/kravvat_)
- 💼 LinkedIn: [Kacper Stec](https://www.linkedin.com/in/kacper-stec/)

---

Thanks for visiting!  
Happy querying! 🧠💡
