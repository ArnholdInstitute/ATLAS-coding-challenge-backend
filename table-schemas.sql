-- This file is just a template describing the schemas of tables to be accessed.
-- It should not be taken as a representation of any actually-existing system.

CREATE TABLE "organization" (
  "organization_id" SERIAL PRIMARY KEY,
  "organization_name" varchar NOT NULL
);

CREATE TABLE "fixtures" (
  "fixture_id" SERIAL PRIMARY KEY,
  "fixture_name" varchar NOT NULL,
  "parent_id" INTEGER,
  "organization_id" INTEGER REFERENCES organizations,
  "geom" geometry(Geometry,4326)
);

CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "username" varchar NOT NULL
);

CREATE TABLE "user_orgs" (
  "user_id" INTEGER REFERENCES users,
  "organization_id" INTEGER REFERENCES organizations
);
