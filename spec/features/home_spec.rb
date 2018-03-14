require 'rails_helper'

feature "visiting the homepage" do
  scenario "the visitor sees welcome text" do
    visit root_path
    expect(page).to have_text("Welcome to the Sample App")
  end
end

feature "visiting the about page" do
  scenario "the visitor sees about heading" do
    visit about_path
    expect(page).to have_text("About")
  end
end

feature "visitng home page" do
  scenario "the visitor sees title" do
    visit root_path
    expect(page).to have_title "Ruby on Rails Tutorial Sample App"
  end
end

feature "visitng help page" do
  scenario "the visitor sees title" do
    visit help_path
    expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
  end
end

feature "visitng about page" do
  scenario "the visitor sees title" do
    visit about_path
    expect(page).to have_title "About | Ruby on Rails Tutorial Sample App"
  end
end

feature "visiting contact page" do
  scenario "the visitor sees title" do
    visit contact_path
    expect(page).to have_title "Contact | Ruby on Rails Tutorial Sample App"
  end
end

feature "visiting home page" do
  scenario "the visitor can navigate to help page" do
    visit root_path
    find_link('Help').visible?
    click_link('Help')
    expect(page).to have_current_path(help_path)
  end
end