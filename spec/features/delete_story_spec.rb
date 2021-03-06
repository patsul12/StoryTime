require 'rails_helper'

describe 'the delete a story process' do
  it 'deletes a story', js: true do
    user = FactoryGirl.create(:user)
    story = FactoryGirl.create(:story)
    login_as(user, :scope => :user)
    visit story_path(story)
    page.evaluate_script('window.confirm = function() { return true; }')
    click_link 'Delete Story'
    expect(page).to have_content("Welcome")
  end
end
