require 'rails_helper.rb'

feature "Recipe adder adds an article" do
    scenario "Recipe adder successfully navigates to the new recipe page from the recipe list page" do
        visit articles_path
        expect(page).to have_content("Recipes List")
        click_link "New Recipe"
        expect(page).to have_content("New Recipe")
        expect(page).to have_field("Meal")
        expect(page).to have_field("Ingredients")
    end
end