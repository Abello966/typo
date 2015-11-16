Feature: Create Categories
  As a blog administrator
  In order to organize my thoughts 
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Get to the categories page
    When I follow "Categories"
    Then I should be on the categories page
    And I should see "Name"
    And I should see "Description"
    And I should see "Permalink"
    And I should see "Keywords"

  Scenario: Save new categories
    Given I am on the categories page
    When I fill in "category_name" with "Jooj"
    And I fill in "category_description" with "mock"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Jooj"
    And I should see "mock"