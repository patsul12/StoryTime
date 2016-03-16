require 'rails_helper'

describe 'the delete a story process' do
  it 'deletes a story', js: true do
    user = FactoryGirl.create(:user)
    story = FactoryGirl.create(:story)
    login_as(user, :scope => :user)
    visit story_path(story)
  end
end
