# 📚 CT_CSI_SQ_4155_Week5 – Subject Allotment System 🎓

This project simulates an **Open Elective Subject Allotment System** for a college, built using **SQL Server**.  
Students are allowed to request subject changes, and the system maintains a complete allotment history using an `Is_Valid` flag.

---

## 🚀 Workflow Summary

- Students submit new subject requests via the `SubjectRequest` table.
- Each student may have only one active subject (`Is_Valid = 1`) in the `SubjectAllotments` table.

### 🔁 If a student:
- ✅ Is new → directly assigned the requested subject.
- 🔄 Is already allotted a subject and requests a different one →  
  their old record is marked inactive (`Is_Valid = 0`), and the new subject is inserted.
- 🚫 Requests the same subject again → no changes made.

---

## 📂 Files Included

| File Name         | Description                             |
|-------------------|-----------------------------------------|
| `SQLQuery1.sql`   | Table creation and dummy data insertion |
| `SQLQuery2.sql`   | Stored procedure for updating allotments|
| `SQLQuery3.sql`   | Procedure execution + result verification|

---

## 🧑‍💻 How to Run

1. Open all 3 `.sql` files in **SSMS** (SQL Server Management Studio).
2. ✅ Execute `SQLQuery1.sql` to create tables and populate sample data.
3. ⚙️ Run `SQLQuery2.sql` to create the stored procedure.
4. ▶️ Execute `SQLQuery3.sql` to run the procedure and view the output.

---

## 🙌 Done By

**Daraspreet Singh**  
🖥️ SQL Server Management Studio | 📅 Week 5 Assignment  
📘 Course Code: `CT_CSI_SQ_4155`

---
