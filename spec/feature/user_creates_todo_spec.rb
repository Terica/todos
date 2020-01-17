require 'rails_helper'

feature 'user creates todo' do
  scenario 'successfully' do
  visit root_path

  click_on "Create New Todo"
  fill_in "Title", with: "Buy Milk"
  click_on "Submit"

  expect(page).to have_css '.todos li', text: "Buy Milk"
  end
end

