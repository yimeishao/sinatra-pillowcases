# App Overview 

An app where users can create private entries that contain information about their recent sexual partners.

# User Stories 
## Users will be able to... 
- sign up, log in, and log out 
- create an entry 
- see all of their own entries 
- edit their entries 
- delete their entries 
## Users will not be able to... 
- view, edit, or delete other users' entries or other profiles 

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

# Stretch Goals 
- CSS 
- Include a Partners model (users have many partners through which they have many entries) 
- Users can create custom fields
