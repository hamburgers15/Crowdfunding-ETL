-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campain" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchart(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric(10,2)   NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varshar(10)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Campain" PRIMARY KEY (
        "cf_id","contact_id","backers_count"
     )
);

CREATE TABLE "Backers" (
    "cf_id" int   NOT NULL,
    "backer_id" varchar(50)   NOT NULL,
    "frist_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "emial" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Backers" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "frist_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "emial" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" varchar(10)   NOT NULL,
    "categort" varchar(10)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategort" varchar(10)   NOT NULL
);

ALTER TABLE "Campain" ADD CONSTRAINT "fk_Campain_cf_id" FOREIGN KEY("cf_id")
REFERENCES "Backers" ("cf_id");

ALTER TABLE "Campain" ADD CONSTRAINT "fk_Campain_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campain" ADD CONSTRAINT "fk_Campain_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campain" ADD CONSTRAINT "fk_Campain_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

