-- This file is just a template describing the schemas of tables to be accessed.
-- It should not be taken as a representation of any actually-existing system.

CREATE TABLE "regions" (
  "region_id" SERIAL PRIMARY KEY,
  "region_name" varchar NOT NULL,
  "geom" geometry(Geometry,4326)
);

CREATE TABLE "communities" (
  "community_id" SERIAL PRIMARY KEY,
  "community_name" varchar NOT NULL,
  "region_id" INTEGER NOT NULL REFERENCES regions,
  "geom" geometry(Point,4326),
  "estimated_population" INTEGER
);

CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "username" varchar NOT NULL
);

CREATE TABLE "roles" (
  "role_id" SERIAL PRIMARY KEY,
  "role_name" varchar NOT NULL
);

CREATE TABLE "user_roles" (
  "user_id" INTEGER REFERENCES users,
  "role_id" INTEGER REFERENCES roles
);