-- Physical Schema: Alcohol Consumption ETL Project


CREATE TABLE "alc_happy" (
    "country" VARCHAR   NOT NULL,
    "happiness_score" FLOAT   NOT NULL,
    "hdi" INTEGER   NOT NULL,
    "gdp_percapita" FLOAT   NOT NULL,
    "beer" INTEGER   NOT NULL,
    "spirits" INTEGER   NOT NULL,
    "wine" INTEGER   NOT NULL,
    CONSTRAINT "pk_alc_happy" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "alc_unhappy" (
    "country" VARCHAR   NOT NULL,
    "consumption" FLOAT   NOT NULL,
    "incomeperperson" FLOAT   NOT NULL,
    "suiciderate" FLOAT   NOT NULL,
    "employrate" FLOAT   NOT NULL
);

CREATE TABLE "life_df" (
    "country" VARCHAR   NOT NULL,
    "life_exp" FLOAT   NOT NULL
);

ALTER TABLE "alc_unhappy" ADD CONSTRAINT "fk_alc_unhappy_country" FOREIGN KEY("country")
REFERENCES "alc_happy" ("country");

ALTER TABLE "life_df" ADD CONSTRAINT "fk_life_df_country" FOREIGN KEY("country")
REFERENCES "alc_happy" ("country");

