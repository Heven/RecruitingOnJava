@mechanize
Feature:  As an admin
          I want to view all the basic information in a list
          So that I can be clear about the candidates.

  Scenario: submit and print
    Given I am on the submit page
    When I submit my information

    And I am on the admin page
    Then I click "get candidates" button
    And I should see basic information list
