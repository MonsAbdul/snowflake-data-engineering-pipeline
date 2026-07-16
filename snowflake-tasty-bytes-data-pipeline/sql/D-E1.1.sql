CREATE OR REPLACE DATABASE tasty_bytes;
CREATE OR REPLACE SCHEMA tasty_bytes.raw_pos;

CREATE OR REPLACE FILE FORMAT tasty_bytes.public.csv_ff
TYPE = 'CSV';

CREATE OR REPLACE STAGE tasty_bytes.public.s3load
URL = 's3://sfquickstarts/tasty-bytes-builder-education/'
FILE_FORMAT = tasty_bytes.public.csv_ff;

CREATE OR REPLACE TABLE tasty_bytes.raw_pos.country
(
    country_id NUMBER(18,0),
    country VARCHAR(16777216),
    iso_currency VARCHAR(3),
    iso_country VARCHAR(2),
    city_id NUMBER(19,0),
    city VARCHAR(16777216),
    city_population VARCHAR(16777216)
);

COPY INTO tasty_bytes.raw_pos.country
FROM @tasty_bytes.public.s3load/raw_pos/country/;