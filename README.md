# Savvy Paws

This is a Full Stack project in which this is the back-end repository
Check the front-end repository at: https://github.com/patybn3/Savvy-Paws-Client
review the web application at: https://patybn3.github.io/Savvy-Paws-Client/

## Objective:

To create a functional Application in which will track the information of an user and its pets, allowing the user to keep their personal and pet's information private and allowing the user to edit, add and delete their pets.

## Requirements to Follow:

The front and the back-end of this application is to be built individually.
Both front-end and back-end are to be store in a public GitHub account. The back-end of the web application also uses Heroku as the server. Changes made are to be commited and deployed often to both GitHub and Heroku to keep the records up to date. Application must be functional and follow the following MVP specifications:

Version Control
Demonstrate using version control by:

Sharing your work through a git repository hosted on Github.
Making frequent, cohesive commits dating back to the first day of the project week.
1 commit on the first day of project week on both repos.
At least 1 commit every day during project week (not necessarily on both repos).

 Signup with email, password, and password confirmation. - (First and Last name added, to be used on stretch goal)
 Login with email and password.
 Logout when logged in.
 Change password with current and new password.
 Signup and Signin must only be available to not signed in users.
 All resource actions that change data must only be available to a signed in user.

Must create a One-to-Many relationship for "User"
Table created was called "Pets" in which one User can have many Pets and One pet can only have on user
ERD illustrating relationship attached bellow

Migration, controller, model, serializer generated

## Technology Used:

The Back-End of this project is written in the following languages:
1. Ruby on Rails
2. Git
3. GitHub
4. Heroku
5. Postgresql.
6. RESTful API

## Planning and Development Process:

User stories were created to propose the features of this game that would be used by an user who is to sing up and sign in to play the game:

1. As an user I would like to sign in
2. As an user I would like to sign out
3. As an user I would like to change my password
4. As an user I would like to sign up
5. As an user I would like to log in the information of my pets
6. As an user I would like to edit the information entered
7. As an user I would like to be able to delete the information entered

## Schedule Followed:

## API

1. Review rails-api-one-to-many or rails-api-many-to-many
2. Scaffold your resource
3. Test your resource's end points with curl scripts
4. Update resource controller to inherit from Protected or OpenRead controller
5. Test your resource's end points with curl scripts
6. Add the relationship to a User
7. Add User ownership to resource controller

 README
 Troubleshoot/Debug
 Style

## Unsolved Problems / goals

Goals:
1. Add a Many-to-Many table function for pets, a pet can have many toys.


[Savvy-Paws ERD 1](./table.jpg) ![Savvy-Paws ERD 1](/table.jpg)
