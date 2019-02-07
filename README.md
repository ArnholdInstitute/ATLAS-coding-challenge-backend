 ________  _________  ___       ________  ________      
|\   __  \|\___   ___\\  \     |\   __  \|\   ____\     
\ \  \|\  \|___ \  \_\ \  \    \ \  \|\  \ \  \___|_    
 \ \   __  \   \ \  \ \ \  \    \ \   __  \ \_____  \   
  \ \  \ \  \   \ \  \ \ \  \____\ \  \ \  \|____|\  \  
   \ \__\ \__\   \ \__\ \ \_______\ \__\ \__\____\_\  \ 
    \|__|\|__|    \|__|  \|_______|\|__|\|__|\_________\
                                            \|_________|
                                  
Stage 1:
A health organization administrator in Alta Verapaz wants
to manage ATLAS's representation of the communities that 
they are responsible for. We are going to provide an API
for them to do so. This API should allow them to create,
read, update, and delete communities from ATLAS's database.

Stage 2:
We only want administrators to be able to access the create,
update, and delete functionality, but all users within a given
organization should be able to read community representations.
We provide a function which checks API access rights given
the user name and API operation; ensure that this function is
called in the appropriate locations and that failures return
400 errors.

Stage 3:
Communities lie inside a region; we want to define "regional"
administrators that can access and alter communities within a
given region as well as overall administrators that can access
and alter all communities.  Write a SQL command that will create
the necessary changes on the backend and change your API and
our authorization function as necessary.

Bonus Stage:
When an administrator creates a community, we want to check
that the representation makes sense (ideally before uploading
it to the database). Write an SQL query (using PostGIS) which
checks that the community is within the boundary of the parent
region.  Implement this validation within the "create" and
"update" API calls.

Bonus Bonus Stage:
Write unit tests for all of the above, using the Jest unit
testing framework.
