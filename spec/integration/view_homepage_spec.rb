require 'spec_helper'
include Capybara::DSL

feature 'View the homepage' do
    scenario 'user sees event listings' do
    Event.create(title: 'Flaming Lips', location: 'Okc', date: '2015/10/15')
    visit root_path
    page.should have_content('Flaming Lips')
    page.should have_content('Oct')
    page.should have_content('15')
  end
end


