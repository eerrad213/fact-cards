# My First Project

## Project Name: Fact-Cards

Project Link: [Fact-Cards](https://fact-cards.herokuapp.com/)

Developed by: [Erwin Rosas](https://github.com/eerrad213)

## Project Tutorial

Once a user navigates to the site they will be greeted by a welcome page.

Within this page, there will be a single example card with a fact stated per the last card created. In the navigation bar lies 4 buttons,
* Clicking on "FactCards" will navigate you back to the home screen.
* Clicking on "Users" will let anyone view any users that have signed up.
* Clicking on "Sign Up" will allow a guest to create an account with an Email and Password, as-well as a Password Confirmation.
* Clicking on "Log In" will allow users to be able to login with their Email and Password.

Once a User is logged in, your email will be displayed on the upper right side. This will generate a different navigation bar with newer buttons, 
* Clicking on "FactCards" will navigate you back to the home screen.
* Clicking on "Users" will let anyone view any users that have signed up. (Now that a user is logged in, they will be able to see a link to remove a user. However only "admin" user is capable of doing so).
* Clicking on "Log Out" will allow a user to safely log out of the program.
* Clicking on "All Cards" will take a user to the table with all cards being displayed. (If a "guest" happens to find this link they will only prompted the option to show each card).
* Clicking on "New Card" will allow a user to generate a new card full of fun facts.

Once a user has been able to navigate to "All Cards", a table with only 5 cards on each page is displayed 
As long as a user is logged in there will be 3 options for each card, 
* Clicking on "Show" will take a user to the card chosen in order to get more knowledge on something new.
* Clicking on "Edit" Will allow a user to modify any changes that each card might need.
* Clicking on "Destroy" link will generate a confirmation popup to delete the mentioned card.

Once a user has reached a specific card with the "Show" link they will be able to view all content for each card 
A Guest will also be able to view any card with tweaking around if they do not wish to sign up.
Within the "Show" link a user has a few options, 
* Each card contains a Subject, Content, Fact and  section.
* There will also be an edit button if user does not wish to go back a page.
* A user/guest will be able to comment on any card, as-well as they will not need to submit their username. Anyone can submit anything in the "Commenter" text field.
* However, only a logged in user will be able to destroy any comments.

## Project Implementations

This project is based on Ruby on Rails along with HTML and CSS. Below will be a list of other features and technologies, 
* ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-darwin13.0]
* Rails 4.1.6
* psql (PostgreSQL) 9.3.5
* Authentication 'bcrypt', '~> 3.1.7'
* Paginated 'kaminari'
* ERD Generator 'rails-erd'
* BootStrap 'twitter-bootstrap-rails' (plus other gems needed for this gem to fully work)

Link to my [ERD](https://github.com/eerrad213/fact-cards/blob/master/erd.pdf)