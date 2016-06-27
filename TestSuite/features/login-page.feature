@login @front-end
Feature: Login Page

  @positive
  Scenario: A User successfully logs in

    Given a User exists in the system
     When the User enters their username and password into the login page fields
      And the User clicks the "Login" button
     Then the User arrives at the home page


  @negative
  Scenario: A User submits without a password

    Given a User exists in the system
     When the User enters their username
      But the User does not enter their password
      And the User clicks the "Login" button
     Then an error message is displayed saying "Please type your password."