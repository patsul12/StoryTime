require 'rails_helper'

describe 'the delete a story process' do
  it 'deletes a story', js: true do
    user = FactoryGirl.create(:user)
    story = FactoryGirl.create(:story_with_sentence)
    login_as(user, :scope => :user)
    visit story_sentence_path(story, story.sentences.first)
    page.evaluate_script('window.confirm = function() { return true; }')
    click_link 'Delete Sentence'
    expect(page).to have_content(story.title)
  end
end
