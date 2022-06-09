# jobly-back-end
Back end RESTful JSON API for jobly project. The frontend is a SPA React Application.

Some Features about the backend API are:
1- Authorization and Athentication with JWT via middleware.


## Available routes.
{ user } must include { username, password, firstName, lastName, email }
### /auth
- POST "/token", { username, password } => { token }, Authorization required: none 
- POST "/register", { user } => { token }, Authorization required: none 
### /users
- POST "/"  Authorization required: admin { user }  => { user, token } This is only for admin users to add new users.
