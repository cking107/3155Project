Feature: Add a new recipe
  
  As a recipe adder
  So that I can easily add a recipe to the recipe book
  I want to be able to add a new recipe
  
Scenario: As a recipe adder I want to be able to navigate from the homepage to the new recipe form
  Given I am on the home page
  When I click on the "My Recipes" link
  Then I should be on the "Recipes List" page
  When I click on the "New Recipe" link
  Then I should be on the "New Recipe" page
  And I should see the "Meal" field
  And I should see the "Ingredients" field