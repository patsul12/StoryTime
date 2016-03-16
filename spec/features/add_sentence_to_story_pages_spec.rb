require 'rails_helper'

describe 'the add sentence to a story process' do
  it 'adds sentence to a story' do
    user = FactoryGirl.create(:user)
    story = FactoryGirl.create(:story)
    login_as(user, :scope => :user)
    visit story_path(story)
    click_link 'Add new sentence'
    fill_in 'content', with: 'This is a test sentence.'
    click_button 'Add sentence'
    expect(page).to have_content('This is a test sentence.')
    click_link 'This is a test sentence.'
    expect(page).to have_content('This is a test sentence.')
  end
end
