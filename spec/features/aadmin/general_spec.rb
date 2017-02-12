require 'rails_helper'

RSpec.feature "AAdmin", :type => :feature do
  scenario "Visit to ActiveAdmin" do
    visit "/admin"
    expect(page).to have_text("Mesh")
  end
end
