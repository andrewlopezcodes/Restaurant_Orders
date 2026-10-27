# Restaurant Orders Data Analysis (MySQL)

A relational database project developed as part of the Per Scholas training curriculum. This project loads, inspects, and analyzes Q1 2023 restaurant sales records to evaluate menu pricing structure, order volume trends, and item-level revenue drivers using MySQL.

---

## Project Overview

* **Database Engine:** MySQL
* **Environment / Tools:** MySQL Workbench / CLI, GitHub, Google Gemini (documentation & analysis synthesis)
* **Program Context:** Per Scholas Bootcamp
* **Scope:** 3-month transaction window (January 1, 2023 – March 31, 2023)
  * Total order lines logged: **12,234**
  * Total items ordered: **12,097**
  * Unfulfilled / NULL items: **137**[cite: 6, 7]
  * Menu catalog size: **32 items across 4 cuisines**


Repository Structure
├── README.md                      # Technical project overview and query outcomes
├── create_restaurant_db.sql       # Schema definition and table insert statements
└── restaurant_orders_analysis.sql # Core analysis queries mapped across Objectives 1
