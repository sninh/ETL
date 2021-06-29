-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/voTMBM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "SPY" (
    "date" date   NOT NULL,
    "stock_price" varchar   NOT NULL,
    "ticker" varchar   NOT NULL,
    CONSTRAINT "pk_SPY" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "Monetary_Policy" (
    "type" varchar   NOT NULL,
    "date" date   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Monetary_Policy" PRIMARY KEY (
        "Title"
     )
);

CREATE TABLE "Banking_applications" (
    "type" varchar   NOT NULL,
    "date" date   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Banking_applications" PRIMARY KEY (
        "Title"
     )
);

CREATE TABLE "Enforcement_actions" (
    "type" varchar   NOT NULL,
    "date" date   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Enforcement_actions" PRIMARY KEY (
        "Title"
     )
);

CREATE TABLE "Banking_consumer" (
    "type" varchar   NOT NULL,
    "date" date   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Banking_consumer" PRIMARY KEY (
        "Title"
     )
);

CREATE TABLE "other_announcements" (
    "type" varchar   NOT NULL,
    "date" date   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_other_announcements" PRIMARY KEY (
        "Title"
     )
);

ALTER TABLE "Monetary_Policy" ADD CONSTRAINT "fk_Monetary_Policy_date" FOREIGN KEY("date")
REFERENCES "SPY" ("date");

ALTER TABLE "Banking_applications" ADD CONSTRAINT "fk_Banking_applications_date" FOREIGN KEY("date")
REFERENCES "SPY" ("date");

ALTER TABLE "Enforcement_actions" ADD CONSTRAINT "fk_Enforcement_actions_date" FOREIGN KEY("date")
REFERENCES "SPY" ("date");

ALTER TABLE "Banking_consumer" ADD CONSTRAINT "fk_Banking_consumer_date" FOREIGN KEY("date")
REFERENCES "SPY" ("date");

ALTER TABLE "other_announcements" ADD CONSTRAINT "fk_other_announcements_date" FOREIGN KEY("date")
REFERENCES "SPY" ("date");

