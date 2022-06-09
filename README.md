## README
# Jobly-back-end
Back end RESTful JSON API for jobly project. This is an API that allows users to login and look for and apply for jobs in different companies.
The frontend is a SPA React Application.

Some Features about the backend API are:
1- Authorization and Athentication with JWT via middleware.


## Available routes.
{ user } must include { username, password, firstName, lastName, email }
{ company } must include { handle, name, description, numEmployees, logoUrl }
{job} must include { title, salary, equity, companyHandle }
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

### /companies
- POST **"/"** { company } =>  { company }, Authorization required: admin
- GET **"/"**  => { companies: [ { company }, ...] },  Authorization required: none
- GET **"/:handle"**,  =>{ company }, Authorization required: none
- PATCH "**/handle**", { fld1, fld2, ... } => { company }, Authorization required: admin
- DELETE "**/:handle**",  => { deleted: handle }, Authorization: admin

## /jobs
- POST **"/"** { job } =>  { job }, Authorization required: admin
- GET **"/"**  => { jobs: [{ job }, ...] },  Authorization required: none
- GET **"/:id"**,  =>{ job }, Authorization required: none
- PATCH "**/id**", { fld1, fld2, ... } => { job }, Authorization required: admin
- DELETE "**/:id**",  => { deleted: id }, Authorization: admin
