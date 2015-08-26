#encoding: utf-8

Feature: Edit contacts from the index view
  In order to quickly update a contact's information from the index page
  As a user
  I should be able to edit a contact in a modal window

  Scenario: Displaying the modal window
    Given I am on the contact index page
    When I click the "Edit" button for contact "Bob"
    Then I should see the edit modal window for "Bob"

  Scenario: Canceling an edit in the modal window
    Given the edit modal window for "Bob" is open
    When I fill in the "first name" field with "Jimmy"
    And I click the modal window's close icon
    Then I should not see "Jimmy"
    But I should see "Bob"

  Scenario: Editing a contact from the modal window
    Given the edit modal window for "Bob" is open
    When I fill in the "first name" field with "Jimmy"
    And I click the "Update contact" button
    Then I should see "Jimmy"
    But I should not see "Bob"
