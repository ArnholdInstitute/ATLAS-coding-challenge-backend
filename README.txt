 ________  _________  ___       ________  ________      
|\   __  \|\___   ___\\  \     |\   __  \|\   ____\     
\ \  \|\  \|___ \  \_\ \  \    \ \  \|\  \ \  \___|_    
 \ \   __  \   \ \  \ \ \  \    \ \   __  \ \_____  \   
  \ \  \ \  \   \ \  \ \ \  \____\ \  \ \  \|____|\  \  
   \ \__\ \__\   \ \__\ \ \_______\ \__\ \__\____\_\  \ 
    \|__|\|__|    \|__|  \|_______|\|__|\|__|\_________\
                                            \|_________|

                                            
This test will involve working with simulated data for community
health organizations (CHOs). CHOs are generally structured with a
geographic hierarchy, so that e.g. a regional health facility may be
responsible for managing a number of health posts located at sites
within its region etc.  An enduser of our platform may have data
access to more than one CHO.

Portions of this challenge should be accomplished in SQL, but most of
the challenge should be done in JavaScript.
                                            
Stage 1:
We have schemas for a fixtures table and a user organizations table.
Write (but do not attempt to run) SQL queries that will produce
a list of the fixtures for a given organization name and a list of
orgs for a given user name.

Stage 2:
We also have a JSON file which contains fixtures data; this is keyed
by organization id. You will note that fixtures have a "parent_id"
field; when this is not null it corresponds to a "higher-level" fixture.
Each organization should have exactly one fixture with a null parent_id.
Write a function which will return a tree structure of fixtures given
an organization id.  Each node of the tree should contain all of the
information associated with the fixture (aside from the organization).

Stage 3:
We have a JSON file which contains user data, and a second file which
contains user organization data. Write a function which takes a username,
retrieves the fixture trees for all organizations the user has access to,
and then merges the trees under a joint root node.  Ensure that the top
node of each of the subtrees identifies which organization it comes from.

Bonus Stage:
Write a "validation" SQL query (using PostGIS) which identifies when
a fixture does not lie within the boundary of the parent fixture.

Bonus Bonus Stage:
Write unit tests for all of the above, using the Jest unit
testing framework.
