CREATE TABLE "Customer" (
  "CustomerID" int PRIMARY KEY,
  "fname" varchar,
  "lname" varchar,
  "email" varchar,
  "address" varchar,
  "zip" int,
  "city" varchar
);

CREATE TABLE "OrderS" (
  "OrderId" int PRIMARY KEY,
  "DateCompleted" timestamp,
  "CustomerID" int,
  "FinalPrice" int,
  "Status" varchar
);

CREATE TABLE "OrderItem" (
  "OrderId" int,
  "ProductID" int,
  "MaterialID" int,
  "Quantity" int
);

CREATE TABLE "Product" (
  "ProductID" int PRIMARY KEY,
  "sizeX" int,
  "sizeY" int,
  "sizeZ" int
);

CREATE TABLE "Printers" (
  "PrinterID" int PRIMARY KEY,
  "name" varchar,
  "PrintType" varchar,
  "printX" int,
  "printY" int,
  "printZ" int
);

CREATE TABLE "Material" (
  "MaterialID" int PRIMARY KEY,
  "name" varchar,
  "price" int,
  "color" varchar,
  "stock" int,
  "MaterialType" varchar
);

CREATE TABLE "PrinterMaterialCompatibility" (
  "PrinterID" int,
  "MaterialID" int
);

ALTER TABLE "OrderS" ADD FOREIGN KEY ("CustomerID") REFERENCES "Customer" ("CustomerID");

ALTER TABLE "OrderItem" ADD FOREIGN KEY ("OrderId") REFERENCES "OrderS" ("OrderId");

ALTER TABLE "OrderItem" ADD FOREIGN KEY ("ProductID") REFERENCES "Product" ("ProductID");

ALTER TABLE "OrderItem" ADD FOREIGN KEY ("MaterialID") REFERENCES "Material" ("MaterialID");

ALTER TABLE "PrinterMaterialCompatibility" ADD FOREIGN KEY ("PrinterID") REFERENCES "Printers" ("PrinterID");

ALTER TABLE "PrinterMaterialCompatibility" ADD FOREIGN KEY ("MaterialID") REFERENCES "Material" ("MaterialID");
