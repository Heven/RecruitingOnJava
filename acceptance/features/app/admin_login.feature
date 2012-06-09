@mechanize
Feature:  As an admin
          I want to view all the basic information in a list
          So that I can be clear about the candidates.
  Scenario: submit
    Given I am on the admin page
    When I click "get candidates" button
    Then I should see basic information list
