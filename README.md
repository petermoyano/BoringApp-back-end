## README
# BoringApp-back-end
Back end RESTful JSON API for Boring App project. This is an API that allows users to login and returns a JWT.
The frontend is a SPA React Application.

Some Features about the backend API are:
1- Authorization and Athentication with JWT via middleware.


## Available routes.
{ user } must include { username, password, firstName, lastName, email }
### /auth
- POST, **"/token"**, { username, password } => { token }, Authorization required: none 
- POST, **"/register"**, { user } => { token }, Authorization required: none 

### /users
- POST, **"/"**, { user }  => { user, token }, Authorization required: admin. 
- GET **"/"**, => {users: [ {user }, ... ] }, Authorization required: admin 
- GET **"/:username"** => { user }, Authorization required: admin or same user-as 
:username
- PATCH **"/:username"**, { user } => { user }, Authorization required: admin or same-user-as-:username
- DELETE "**/:username**"  =>  { deleted: username },  Authorization required: admin or same-user-as-:username

