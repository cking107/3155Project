require 'rails_helper.rb'

feature "Recipe adder adds a recipe" do
    scenario "Recipe adder successfully navigates to the new recipe page from the recipe list page" do
        visit articles_path
        expect(page).to have_content("Recipes List")
        click_link "New Recipe"
        expect(page).to have_content("New Recipe")
        expect(page).to have_field("Meal")
        expect(page).to have_field("Ingredients")
    end
    
    scenario "Recipe adder successfully creates a new recipe" do
        visit new_article_path
        expect(page).to have_content("New Recipe")
        fill_in "Meal", with: "New Capybara Recipe"
        fill_in "Ingredients", with: "This is a new Capybara Ingredient"
        click_button "Create Recipe"
        expect(page).to have_content("New Capybara Recipe")
        expect(page).to have_content("This is a new Capybara Ingredient")
    end
end