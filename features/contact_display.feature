#encoding: utf-8

Feature: List contacts with the application
  In order to manage the contacts within the application
  As a user
  I should see a list of contacts in the system, associated with action buttons

  Scenario: Displaying the index list of contacts
    Given I am on the contact index page
    Then I should see 3 contacts within the contacts table
