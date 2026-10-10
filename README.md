# 🐧 Palmer Penguins: Species & Morphometric Analysis

<img width="1401" height="731" alt="Ekran Resmi 2026-10-10 21 30 51" src="https://github.com/user-attachments/assets/cdbbde73-27c7-4d42-ac72-c967f4d2b7a0" />


[![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=flat&logo=python&logoColor=white)](https://www.python.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-4169E1?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?style=flat&logo=powerbi&logoColor=black)](#)

## 📌 Executive Summary
An end-to-end data analysis project evaluating physical measurements across three penguin species (*Adelie*, *Chinstrap*, and *Gentoo*) using the Palmer Penguins dataset. 

This project covers the full data analysis lifecycle: **Data Cleaning & Exploratory Data Analysis (EDA)** in Python, **Relational Database Querying** in PostgreSQL, and **Interactive Data Visualization** using a custom star-schema data model in Power BI.

---

## 🎯 Core Research Question
> **Which body measurements serve as the most reliable identifiers to distinguish between the three penguin species?**

---

## 📊 Key Analytical Insights

| Species | Avg. Body Mass (g) | Avg. Flipper Length (mm) | Key Distinguishing Feature |
| :--- | :---: | :---: | :--- |
| **Adelie** | 3,700.7 | 190.0 | Short flippers, distinct culmen length compared to Chinstrap |
| **Chinstrap** | 3,733.1 | 195.8 | Overlaps in body mass with Adelie, separated by longer culmen length |
| **Gentoo** | 5,076.0 | 217.2 | Largest overall; significantly higher body mass and flipper length |

### 💡 Key Takeaways:
* **Gentoo's Dominance:** *Gentoo* is physically distinct from the other two species—exhibiting a **~37% higher average body mass** and **~14% longer flipper length** compared to *Adelie*.
* **Mass vs. Flipper Overlap:** While comparing averages suggests *Body Mass* is the top feature, distribution overlap analysis proves **Flipper Length** is a much more reliable metric for isolating *Gentoo*. Only 15 non-Gentoo penguins reach Gentoo's minimum flipper length, whereas 65 reach its minimum body mass.
* **The Adelie vs. Chinstrap Dilemma:** *Adelie* and *Chinstrap* share nearly identical average body masses (~32g difference). Therefore, **Culmen (Bill) Length** is required to separate *Adelie* from *Chinstrap*.
* **Conclusion:** No single morphological metric can classify all three species independently; a **multivariate approach** combining flipper length and culmen dimensions is necessary.

---

## 🛠️ Tech Stack & Implementation Details

| Tool / Technology | Focus Area | Functional Role |
| :--- | :--- | :--- |
| **Python** (`pandas`, `matplotlib`, `seaborn`) | Data Pipeline & EDA | Data wrangling, missing value treatment, feature engineering, statistical distribution plots

POWER BI LINK: https://app.powerbi.com/links/rAXfwYUm9f?ctid=647c584a-3f44-47e1-8242-8179421fea5a&pbi_source=linkShare
