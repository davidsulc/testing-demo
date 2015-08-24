#encoding: utf-8

Feature: List contacts with the application
  In order to manage the contacts within the application
  As a user
  I should see a list of contacts in the system, associated with action buttons

  Scenario: Displaying the index list of contacts
    Given I am on the contact index page
    Then I should see 3 contacts within the contacts table
    And I should see "Alice" within the contacts table

  Scenario: Deleting a contact from the index page
    Given I am on the contact index page
    When I click the "Delete" button for contact "Alice"
    Then I should be on the contact index page
    And I should not see "Alice" within the contacts table
