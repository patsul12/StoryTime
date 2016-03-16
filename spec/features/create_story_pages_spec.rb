require 'rails_helper'

describe 'the create a story process' do
  it 'creates a new story' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'New Story'
    fill_in 'story_title', with: 'Test Title'
    click_on 'Create Story'
    expect(page).to have_content 'Test Title'
  end
end
