require 'rails_helper.rb'

feature "Recipe adder shows a recipe" do
    scenario "Recipe adder successfully shows a recipe from the list" do
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
        click_link "Show"
        expect(page).to have_content("Your Recipe")
        expect(page).to have_content("Meal: New Capybara Recipe")
        expect(page).to have_content("Ingredients: This is a new Capybara Ingredient")
        expect(page).to have_content("Instructions")
        expect(page).to have_content("Add instructions:")
        expect(page).to have_field("Author")
        expect(page).to have_field("Instructions")
    end
end