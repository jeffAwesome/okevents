require 'spec_helper'
include Capybara::DSL

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Events'
  end
end
