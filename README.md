# 🛒 Aviafo - Haberdashery E-commerce

Aviafo is a professional full-stack web application designed to manage and sell haberdashery products (threads, yarns, elastics, and velcro). This project highlights the integration of a robust Java backend with a strictly normalized SQL Server database, delivering a seamless experience through a dynamic web interface.

---

## 🛠 Tech Stack

- **Backend:** Java 25 (LTS) with Spring Boot and Maven
- **Database:** SQL Server (Normalized following 1NF, 2NF, and 3NF rules)
- **Frontend:** HTML5, Tailwind CSS, and JavaScript
- **Architecture:** Layered MVC (Model-View-Controller)

---

## 🎨 Phase 1 — Visual Identity & Design System

Before writing a single line of code, Aviafo went through a complete visual identity and design system phase, ensuring a consistent, professional, and cohesive brand experience across the entire application.

### Brand Identity

The visual identity was built from scratch using **Adobe Illustrator**, starting with the brand concept and evolving through multiple iterations until reaching the final result.

- **Logotype:** Custom wordmark combining a modern sans-serif typeface with a hand-crafted needle illustration integrated directly into the letterforms, reinforcing the haberdashery theme.
- **Slogan:** *"A qualidade que valoriza a sua costura."* — positioned below the logotype as a brand statement.
- **Icon:** A simplified version of the brand mark featuring the letter **"a"** intertwined with a needle and thread, designed for use as a favicon, app icon, and UI element. Available in both **light** and **dark** mode variants.

#### Theme Variants

| ☀️ Light Mode Theme | 🌙 Dark Mode Theme |
|---|---|
| ![Aviafo Logo Light](assets/brand/aviafo-logo-dark.svg) | ![Aviafo Logo Dark](assets/brand/aviafo-logo-light.svg) |

### Color System

The color palette was carefully defined using **Adobe Color** and the **Figma Plugin — Foundation**, with each color serving a specific role in the interface:

| Palette | Role | Usage |
|---|---|---|
| **Primary (Navy Blue)** | Brand identity | Buttons, headers, key UI elements |
| **Secondary (Warm Cream/Grey)** | Neutral base | Backgrounds, cards, surfaces |
| **Success (Green)** | Positive feedback | Order confirmed, in stock, form success |
| **Warning (Orange)** | Alerts | Low stock, incomplete fields |
| **Danger (Red)** | Error states | Payment failure, out of stock, invalid input |
| **Neutrals (Cool Grey)** | Interface structure | Text, borders, icons, shadows |

Each palette includes a full range of tonal variations (Light, Normal, Dark, Darker) with hover and active states to support interactive components.

#### Button & CTA System

- **Light mode:** Solid navy blue button on cream background
- **Dark mode:** Gold linear gradient button on navy blue background

### Typography

- **Primary font:** [Montserrat](https://fonts.google.com/specimen/Montserrat) (Google Fonts) — used across all interface text, from display headings to body copy and labels.
- **Type scale:** Defined across 7 levels (H1 through Labels), each available in **Bold** and **Regular** weights, ensuring clear visual hierarchy throughout the application.

### Design System

The full design system was structured and documented in **Figma**, organized into the following sections:

- **Color Style** — All palettes with light/dark mode variants
- **Font Style** — Complete typographic scale
- **Icons** — Rounded icon library (Rounded Corners set)
- **Buttons** — CTA components for light and dark modes
- **Tabs** — Navigation tab components
- **Text Fields** — Input field components
- **Cards** — Product and content card components
- **Components** — Reusable UI elements
- **Logotipo** — Brand mark in all variants (light, dark, icon)
- **Grid** — Layout grid system
- **Imagens** — Image usage guidelines

## Design Drafts

### Logo Concept
![Logo Concept](docs/drafts/design/logo-concept.png)

### Icon Concept
![Icon Concept](docs/drafts/design/icon-concept.png)

### Design System
![Design System](docs/drafts/design/design-system.png)

### Interface Previews (Mockups)

Visual demonstration of how the design system adapts across dark and light environments:

| Light Mode Interface | Dark Mode Interface |
|---|---|
| ![Preview Light Mode](assets/brand/aviafo-preview-light.png) | ![Preview Dark Mode](assets/brand/aviafo-preview-dark.png) |

### Tools Used in This Phase

| Tool | Purpose |
|---|---|
| Adobe Illustrator | Logo and icon creation and editing |
| Figma | Design system organization and UI prototyping |
| Figma Plugin — Foundation | Color palette and gradient generation |
| Adobe Color | Color palette generation and harmony validation |
| Google Fonts | Typography selection (Montserrat) |

---

## 🏗 Database Engineering

The Aviafo project prioritizes high-level data integrity and performance:

- **Database Normalization:** Applied to eliminate redundancies and ensure data consistency.
- **SQL Constraints:** Implementation of PK, FK, and CHECK constraints to enforce business rules, such as preventing negative stock levels.
- **Management:** Developed using DataGrip for professional-grade SQL scripting and optimization.

---

## 📂 Project Structure (Planned)

- `src/main/java/.../controller` — API endpoints and HTTP request handling.
- `src/main/java/.../service` — Core business logic and rules.
- `src/main/java/.../model` — Database entities and JPA mappings.
- `src/main/java/.../repository` — Data access layer for SQL Server communication.
- `src/main/java/.../dto` — Data Transfer Objects for secure data exchange.
- `src/main/java/.../infra` — Infrastructure and global error handling.

---

## 🚀 Project Highlights

- **Cutting-edge Backend:** Developed using Java 25 and Spring Boot, leveraging the latest features for high-performance and future-proof code.
- **Professional Database Engineering:** Architecture centered on a SQL Server database, strictly following 1NF, 2NF, and 3NF normalization rules to ensure data integrity.
- **Robust Data Integrity:** Implementation of advanced SQL Constraints (PK, FK, and CHECK) to enforce business logic directly at the database level.
- **Modern Full-stack Integration:** A dynamic web interface built with Tailwind CSS and Vanilla JavaScript, communicating with a structured Java REST API.
- **Professional Tooling:** Workflow optimized with high-performance tools like IntelliJ IDEA, DataGrip for database management, Maven for build automation, and Swagger (OpenAPI 3) for interactive API documentation.
- **Clean Architecture:** Implementation of a layered MVC (Model-View-Controller) pattern, ensuring a clear separation of concerns between business logic and data access.
- **Complete Design System:** A fully documented visual identity and design system built before development, ensuring UI consistency across all application screens and states.
