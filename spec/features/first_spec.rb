require 'rails_helper'

RSpec.feature "Root", :type => :feature do
  scenario "Visit to root", :js => true do
    visit "/"
    expect(page).to have_text("1+1=2")
  end
end
