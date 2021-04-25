require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
  scenario "New Project button works" do
    visit root_path "/projects/new"
    expect(page).to have_text("New Project")
  end
end