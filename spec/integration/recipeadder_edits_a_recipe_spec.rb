require 'rails_helper.rb'

feature "Recipe adder edits a recipe" do
    scenario "Recipe adder successfully creates a new recipe and edits it" do
        visit new_article_path
        expect(page).to have_content("New Recipe")
        fill_in "Meal", with: "New Capybara Recipe"
        fill_in "Ingredients", with: "This is a new Capybara Ingredient"
        click_button "Create Recipe"
        expect(page).to have_content("New Capybara Recipe")
        expect(page).to have_content("This is a new Capybara Ingredient")
        click_link "Recipe List"
        expect(page).to have_content("New Capybara Recipe")
        expect(page).to have_content("This is a new Capybara Ingredient")
        click_link "Edit"
        expect(page).to have_content("Editing Recipe")
        expect(page).to have_field("Meal")
        expect(page).to have_field("Ingredients")
        fill_in "Meal", with: "New Edited Capybara Recipe"
        fill_in "Ingredients", with: "This is a new edited Capybara Ingredient"
        click_button "Create Recipe"
        expect(page).to have_content("New Edited Capybara Recipe")
        expect(page).to have_content("This is a new edited Capybara Ingredient")
    end
end