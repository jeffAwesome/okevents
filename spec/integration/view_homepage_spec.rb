require 'spec_helper'
include Capybara::DSL

def setup
  user = User.create(:email    => "alindeman@example.com",
                     :password => "ilovegrapes")

  visit "/users/sign_in"
  fill_in "Email",    :with => "alindeman@example.com"
  fill_in "Password", :with => "ilovegrapes"
  click_button "Sign in"
end

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Events'
  end
end


