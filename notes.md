# App Overview 

I'm going to build an app where users can create entries that contain information about their recent sexual activity.

# User Stories 
## Users will be able to... 
- sign up, log in, and log out 
- create an entry 
- see all of their own entries 
- edit their entries 
- delete their entries 

# Wireframing 
## Models 
- User 
- Entry 

## User 
### Attributes 
- name 
- email 
- password (bcrypt)
### Associations 
- user has_many entries 

## Entry 
### Attributes 
- date 
- content (name, star sign, general notes)
- user_id (foreign key)
### Associations 
- entry belongs_to user 