CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "user_connections"(
    "id" INTEGER,
    "user_1" INTEGER,
    "user_2" INTEGER,
    "relationship" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY ("user_1") REFERENCES "users"("id"),
    FOREIGN KEY ("user_2") REFERENCES "users"("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "founding_year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "user_schools" (
    "id" INTEGER,
    "school_id" INTEGER,
    "user_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "degree" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "user_companies" (
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
