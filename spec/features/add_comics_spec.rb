require 'rails_helper'

feature 'managing comics' do
  scenario 'add comics' do
    visit '/comics/new'
    comic_title = 'Saga'
    within '#comics-form' do
      fill_in 'Series', with: comic_title
      fill_in 'Uri', with: 'http://an_url.com'
      fill_in 'Year', with: '2014'
      click_button 'Create Comic'
    end

    expect(page).to have_content "Successfully created comic: #{comic_title}"
  end
end
