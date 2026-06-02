# AFL Matchday Attendance & Fan Engagement Analytics

## Project Overview

This project analyses AFL matchday attendance patterns using publicly available AFL Tables data. The aim is to understand how attendance varies across seasons, clubs, venues, rounds and matchdays, and to generate business-focused insights that could support fan engagement, venue planning and matchday operations.

The project was built as a portfolio project for data analytics, technology and sport business roles.

## Business Question

**What AFL attendance patterns can support better fan engagement, venue planning and matchday operations?**

## Dataset Source

Data was collected from AFL Tables:

- Season-level attendance summary
- AFL season pages from 2012 to 2025
- Match-level attendance, venue, date, teams, scores and results

The main analysis focuses on the modern AFL period from **2012 to 2025**. The seasons **2020 and 2021** were excluded from the main comparison because they were affected by COVID-related attendance conditions. Finals were kept in the dataset but analysed separately from Home & Away matches.

## Tools Used

- Python
- pandas
- NumPy
- requests
- BeautifulSoup
- lxml
- DuckDB / SQL
- Matplotlib
- Jupyter Notebook
- GitHub

## Project Workflow

1. Collected AFL attendance data from AFL Tables.
2. Saved raw HTML files for reproducibility.
3. Cleaned season-level attendance data in Python.
4. Parsed match-level AFL season tables from 2012 to 2025.
5. Separated Home & Away matches from Finals.
6. Added flags for COVID-affected seasons and main analysis matches.
7. Saved cleaned datasets as CSV files.
8. Used SQL/DuckDB to answer business questions.
9. Created visualisations for GitHub presentation.

## Data Cleaning Summary

Two cleaned datasets were created:

```text
data/processed/afl_season_attendance_clean.csv
data/processed/afl_match_attendance_clean.csv