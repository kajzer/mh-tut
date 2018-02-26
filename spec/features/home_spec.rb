require 'rails_helper'

feature "visiting the homepage" do
  scenario "the visitor sees welcome text" do
    visit root_path
    expect(page).to have_text("This is the home page for the Ruby on Rails Tutorial sample application.")
  end
end

feature "visiting the about page" do
  scenario "the visitor sees about heading" do
    visit static_pages_about_url
    expect(page).to have_text("About")
  end
end

feature "visitng home page" do
  scenario "the visitor sees title" do
    visit static_pages_home_url
    expect(page).to have_title "Home | Ruby on Rails Tutorial Sample App"
  end
end

feature "visitng help page" do
  scenario "the visitor sees title" do
    visit static_pages_help_url
    expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
  end
end

feature "visitng about page" do
  scenario "the visitor sees title" do
    visit static_pages_about_url
    expect(page).to have_title "About | Ruby on Rails Tutorial Sample App"
  end
end