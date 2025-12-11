import dlt
from dlt.sources.sql_database import sql_database
from pathlib import Path


# Hittar filer
# Här hittar vi data-mappen
DATA_PATH = Path(__file__).parent / "data"

# Var SQLite-filen ligger
SQLITE_PATH = DATA_PATH / "sqlite-sakila.db"

# Vart vi vill skapa DuckDB-filen
DUCKDB_PATH = DATA_PATH / "sakila.duckdb"

# Här skapar vi DLT-källan
source = sql_database(credentials=f"sqlite:///{SQLITE_PATH}", schema="main")

# Här skapar vi en pipeline, det bestämmer hur datan laddas
pipeline = dlt.pipeline(
        pipeline_name="sakila_sqlite_duckdb",
        destination=dlt.destinations.duckdb(str(DUCKDB_PATH)),
        dataset_name="staging",
)

# Här ersätter vi all tidigare data/kör pipelinen
load_info = pipeline.run(source, write_disposition="replace")

print(load_info)
