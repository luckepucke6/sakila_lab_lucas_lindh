# Sakila lab

In this lab I will do data analysis on Sakila database ...

TODO: highlights from the lab
TODO: description about the lab
TODO: nice images/screenshots

- idea is to make someone directly understand what your lab is about to be interested to learn more

## När jag använder mig av SQL och när jag använder mig av pandas
Jag använder SQL för att göra det tunga databasjobbet. Det är bra för att göra joins, filtrera på stora tabelleter, räkna, gruppera och sortera. SQL är bra för större datamängder och gör att jag kan skapa ett bra grund DataFrame att arbeta vidare med.

När jag väl har min DataFrame använder jag pandas för analysmomentet. Pandas passar bra när jag vill testa filter snabbt, göra mindre transformationer, gruppera på olika sätt, skapa nya kolumner eller visualisera datan. Det ger en flexibel miljö där jag kan fortsätta analysera utan att skriva om mina SQL-frågor.

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