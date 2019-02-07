-- This file is just a template initializing a test system.
-- It should not be taken as a representation of actual data.

INSERT INTO usrs (username) VALUES ('Admin User', 'Regular User');

INSERT INTO roles (role_name) VALUES ('ADMIN', 'Health worker');

INSERT INTO user_roles (user_id, role_id) SELECT u.user_id, r.role_id
FROM usrs AS u, roles AS r
WHERE (u.username = 'Admin User' AND r.role_name = 'ADMIN')
  OR (u.username = 'Regular User' AND r.role_name = 'Health worker');

INSERT INTO regions (region_name, geom) 
VALUES
  ('Region 1', ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Polygon", "coordinates":[[0.0,0.0],[0.0,1.0],[1.0,1.0],[1.0,0.0]]}'), 4326)),
  ('Region 2', ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Polygon", "coordinates":[[0.0,0.0],[0.0,1.0],[-1.0,1.0],[-1.0,0.0]]}'), 4326)),
  ('Region 3', ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Polygon", "coordinates":[[0.0,0.0],[0.0,-1.0],[1.0,-1.0],[1.0,0.0]]}'), 4326)),
  ('Region 4', ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Polygon", "coordinates":[[0.0,0.0],[0.0,-1.0],[-1.0,-1.0],[-1.0,0.0]]}'), 4326));

INSERT INTO communities (community_name, region_id, estimated_population, geom)
VALUES
  ('Community A', 1, 1000, ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Point", "coordinates":[0.5,0.5]}'), 4326)),
  ('Community B', 1, 2000, ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Point", "coordinates":[0.01,0.5]}'), 4326)),
  ('Community C', 3, 3000, ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Point", "coordinates":[0.5,-0.5]}'), 4326)),
  ('Community D', 4, 4000, ST_SetSRID(ST_GeomFromGeoJSON('{"type": "Point", "coordinates":[-0.5,-0.5]}'), 4326));
  