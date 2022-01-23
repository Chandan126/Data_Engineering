FROM python:3.9.1

RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY taxi+_zone_lookup.csv taxi+_zone_lookup.csv
COPY yellow_tripdata_2021-01.csv yellow_tripdata_2021-01.csv
COPY data_ingestion.py data_ingestion.py

ENTRYPOINT [ "python", "data_ingestion.py" ]