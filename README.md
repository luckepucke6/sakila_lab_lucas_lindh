# Sakila lab

In this lab I will do data analysis on Sakila database ...


# Highlights
I labben så byggde jag först en pipeline med DLT som automatiskt laddar Sakila-datat from SQLite till DuckDB. Det gör att jag alltid kan återskapa datan med ett enda kommando.
Sedan gjorde jag en EDA i en notebook där jag utforskade filmerna, kunderna och uthyrningarna för att förstå vad som sticker ut.
Till sist byggde jag en dashboard i Evidence där jag viualiserad resultaten med olika funktioner. Det gav mig en tydlig överblick över vilka kategorier som är mest lönsamma,
vilka kunder som spenderar mest och vilka länder som hyr flest filmer.



# Sakila Movie Rental Analysis (MLOps Lab)
Detta projektet är en del av MLOps kursens Sakila-labb.
I projektet så laddar jag in Sakila-data med DLT, gör en EDA (Exploratory Data Analysis) i notebook, och bygger en BI-dashboard (Buisness Intelligence) med Evidence.

## Struktur 
- data/ - SQLite och DuckDB filer.
- dashboard/ - Evidence projekt (BI-report)
- notebooks/ - EDA och analyser
- dlt_script.py - Pipeline SQLite -> DuckDB

## Hur man kör projektet
1. Kör först dlt_script.py -> uv run dlt_script.py
2. Kör sedan Evidence-dashboarden -> cd dashboard && npm run dev

## Projekt innehåll
- DLT-pipeline för data ingestion
- EDA i jupyter notebook
- Grafer
- Evidence-dashboard med 4 sektioner

## Projektets syfte
Ett komplett mini-MLOps flöde:
- data ingestion
- analys
- visualisering
- dashboard
- reproducerbar pipeline

## Tekniker som jag använt
- DLT
- DuckDB
- SQLite
- Jupyter Notebook
- Evidence
- ECharts


# ENGLISH

# Highlights
In this lab, I first built a pipeline using DLT that automatically loads the Sakila data from SQLite into DuckDB. This allows me to recreate the entire dataset with a single command.
Then I performed an EDA in a notebook where I explored the films, customers, and rentals to understand what stands out in the data.
Finally, I built a dashboard in Evidence where I visualized the results using different components. This gave me a clear overview of which categories are most profitable, which customers spend the most, and which countries rent the most films.



# Sakila Movie Rental Analysis (MLOps Lab)
This project is part of the MLOps course's Sakila lab.
In the project, I load the Sakila data using DLT, perform an EDA (Exploratory Data Analysis) in a notebook, and build a BI dashboard (Business Intelligence) with Evidence.

## Structure
- data/ - SQLite and DuckDB files
- dashboard/ - Evidence project (BI report)
- notebooks/ - EDA and analysis
- dlt_script.py - Pipeline SQLite -> DuckDB

## How to run the project
1. First run the DLT pipeline -> uv run dlt_script.py
2. Then run the Evidence dashboard -> cd dashboard && npm run dev

## Project contents
- DLT pipeline for data ingestion
- EDA in Jupyter Notebook
- Various charts
- Evidence dashboard with 4 sections

## Project purpose
A complete mini MLOps workflow:
- data ingestion
- analysis
- visualization
- dashboard
- reproducible pipeline

## Technologies used
- DLT
- DuckDB
- SQLite
- Jupyter Notebook
- Evidence
- ECharts