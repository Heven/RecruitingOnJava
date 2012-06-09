@mechanize
Feature:  As an student
  I want to submit my information
  So that I can let hr know me

  Scenario: submit
    Given I am on the submit page
    When I submit my information
    Then I should see success message

  Scenario: submit student's information
    Given I am on the submit page
    When I fill the following information:
    | name       | ZhouCong|
    | university | xjtu|
    | phone      | 13511111111|
    | mail       | x@xjtu.com|
    | major      | software|
    Then I should see success message
    #Then there should be user in database with the following details:
    # | name       | ZhouCong|
    # | university | xjtu|
    # | phone      | 13511111111|
    # | mail       | x@xjtu.com|
    # | major      | software|