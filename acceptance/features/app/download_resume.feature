@mechanize @wip
Feature:  As an admin
          I want to download candidates' resume
          So that I can learn more about this person.

  Scenario: download resume
    Given I am on the admin page
    When I click "get candidates" button
    And I should see basic information list
    Then I click "download" link
    And I should download resume file