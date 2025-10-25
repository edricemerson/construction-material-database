# construction-material-database
A database project that transforms a construction material submission form into a fully normalized MySQL database system for efficient project data management.

## 📘 Overview

This project demonstrates how to:
- Analyze a real-world form and identify redundant/unstructured data.
- Apply normalization (UNF → 1NF → 2NF → 3NF) to structure the data.
- Build a relational database using MySQL.
- Present the entire workflow through report and presentation files.

## 1. 🧠 Clone the Repository

```bash
git clone https://github.com/<edricemerson>/<construction-material-database>.git
cd <construction-material-database>
```

## 2. 💻 Set up VS Code + MySQL Shell / CLI
### Downloading required tools
| 🛠️ Tool | 💡 Purpose | 🔗 Download |
|----------|-------------|-------------|
| [**VS Code**](https://code.visualstudio.com) | Code editor for writing and running SQL or web projects. | [Download](https://code.visualstudio.com) |
| [**MySQL Server**](https://dev.mysql.com/downloads/mysql/) | Database engine that runs your SQL scripts. | [Download](https://dev.mysql.com/downloads/mysql/) |
| [**MySQL Shell / Command Line**](https://dev.mysql.com/downloads/mysql/) | Used to execute SQL commands and connect to your MySQL Server. *(Included automatically when you install MySQL)* | [Download](https://dev.mysql.com/downloads/mysql/) |

### Verify MySQL Installation
Open a terminal (or VS Code terminal) and run:
```bash
mysql --version
```

### ✅ If you see a version number like this you are up to date go to Open MySQL from VS Code Terminal:
```bash
mysql  Ver 8.0.xx for Win64 on x86_64 (MySQL Community Server)
```


---
### ❌ If you see 'mysql' is not recognized... while running
```bash
mysql --version
```
<details>
  <summary style=""><h3>How To Fix It (Windows Only)</h3></summary>

Open File Explorer
### Go to one of these common paths and copy the path folder for later use:
```bash
C:\Program Files\MySQL\MySQL Server 8.0\bin
```
or
```bash
C:\Program Files (x86)\MySQL\MySQL Server 8.0\bin
```
<img src="./TutorTroubleshoot1.jpg" alt="Try Refresh" width="500">

### Search Environment Variable in Windows search bar and press it

<img src="./TutorTroubleshoot2.jpg" alt="Try Refresh" width="500">

### Click Environment Variables...

<img src="./TutorTroubleshoot3.jpg" alt="Try Refresh" width="500">

### See System variables' Box , Click the Path      C:\ProgramFiles..... 
then Click Edit

<img src="./TutorTroubleshoot4.jpg" alt="Try Refresh" width="500">
</details>


### Open MySQL from VS Code Terminal
Open your project folder in VS Code.
Open the integrated terminal (Ctrl + ~).
Run:
```bash
mysql -u root -p
```




