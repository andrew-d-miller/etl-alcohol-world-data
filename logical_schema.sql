-- Logical Schema: Alcohol Consumption ETL Project

alc_happy
--
country VARCHAR PK
happiness_score FLOAT
hdi INTEGER
gdp_percapita FLOAT
beer INTEGER
spirits INTEGER
wine INTEGER

alc_unhappy
--
country VARCHAR FK >- alc_happy.country
consumption FLOAT
incomeperperson FLOAT
suiciderate FLOAT
employrate FLOAT

life_df
--
country VARCHAR FK >- alc_happy.country
life_exp FLOAT