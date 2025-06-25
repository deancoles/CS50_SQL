CREATE TABLE "ingredients"(
    "id" INTEGER,
    "name" TEXT,
    "price" REAL,
    "unit" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" TEXT,
    "price" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE "donut_ingredients"(
    "id" INTEGER,
    "ingredient_id" INTEGER,
    "donut_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "customer_orders"(
    "id" INTEGER,
    "customer_id" INTEGER,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);
