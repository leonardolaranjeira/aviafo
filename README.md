
# 🛒 Aviafo - Haberdashery E-commerce

**Aviafo** is a professional full-stack web application designed to manage and sell haberdashery products (threads, yarns, elastics, and velcro). This project highlights the integration of a robust Java backend with a strictly normalized SQL Server database, delivering a seamless experience through a dynamic web interface.

## 🛠 Tech Stack
* **Backend:** Java 25 (LTS) with Spring Boot and Maven
* **Database:** SQL Server (Normalized following 1NF, 2NF, and 3NF rules)
* **Frontend:** HTML5, Tailwind CSS, and JavaScript
* **Architecture:** Layered MVC (Model-View-Controller)

## 🏗 Database Engineering
The Aviafo project prioritizes high-level data integrity and performance:
* **Database Normalization:** Applied to eliminate redundancies and ensure data consistency.
* **SQL Constraints:** Implementation of PK, FK, and CHECK constraints to enforce business rules, such as preventing negative stock levels.
* **Management:** Developed using DataGrip for professional-grade SQL scripting and optimization.

## 📂 Project Structure (Planned)
* `src/main/java/.../controller`: API endpoints and HTTP request handling.
* `src/main/java/.../service`: Core business logic and rules.
* `src/main/java/.../model`: Database entities and JPA mappings.
* `src/main/java/.../repository`: Data access layer for SQL Server communication.
* `src/main/java/.../dto`: Data Transfer Objects for secure data exchange.
* `src/main/java/.../infra`: Infrastructure and global error handling.

## 🚀 Project Highlights
* **Cutting-edge Backend:** Developed using Java 25 and Spring Boot, leveraging the latest features for high-performance and future-proof code.
* **Professional Database Engineering:** Architecture centered on a SQL Server database, strictly following 1NF, 2NF, and 3NF normalization rules to ensure data integrity.
* **Robust Data Integrity:** Implementation of advanced SQL Constraints (PK, FK, and CHECK) to enforce business logic directly at the database level.
* **Modern Full-stack Integration:** A dynamic web interface built with Tailwind CSS and Vanilla JavaScript, communicating with a structured Java REST API.
* **Professional Tooling:** Workflow optimized with high-performance tools like **IntelliJ IDEA**, **DataGrip** for database management, **Maven** for build automation, and **Swagger (OpenAPI 3)** for interactive API documentation.
* **Clean Architecture:** Implementation of a layered MVC (Model-View-Controller) pattern, ensuring a clear separation of concerns between business logic and data access.
