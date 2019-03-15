-- This file is just a template describing the schemas of tables to be accessed.
-- It should not be taken as a representation of any actually-existing system.

CREATE TABLE organizations (
  organization_id SERIAL PRIMARY KEY,
  organization_name TEXT UNIQUE NOT NULL
);

CREATE TABLE fixtures (
  fixture_id SERIAL PRIMARY KEY,
  fixture_name TEXT NOT NULL,
  parent_id INTEGER,
  organization_id INTEGER REFERENCES organizations,
  geom geometry(Geometry,4326)
);

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username TEXT UNIQUE NOT NULL
);

CREATE TABLE user_organizations (
  user_id INTEGER REFERENCES users,
  organization_id INTEGER REFERENCES organizations
);
