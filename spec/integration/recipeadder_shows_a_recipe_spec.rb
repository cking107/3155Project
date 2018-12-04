require 'rails_helper.rb'

feature "Recipe adder deletes a recipe" do
    scenario "Recipe adder successfully deletes a recipe from the list" do
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
        click_link "Delete"
        click_button "OK"
    end
end