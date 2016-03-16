require 'rails_helper'

RSpec.describe SentencesController, type: :controller do
  it { should route('get', '/stories/1/sentences').to(action: :index, story_id: 1)}
  it { should route('post', '/stories/1/sentences').to(action: :create, story_id: 1)}
  it { should route('get', '/stories/1/sentences/new').to(action: :new, story_id: 1)}
  it { should route('get', '/stories/1/sentences/1').to(action: :show, id: 1, story_id: 1)}
  it { should route('get', '/stories/1/sentences/1/edit').to(action: :edit, id: 1, story_id: 1)}
  it { should route('patch', '/stories/1/sentences/1').to(action: :update, id: 1, story_id: 1)}
  it { should route('put', '/stories/1/sentences/1').to(action: :update, id: 1, story_id: 1)}
  it { should route('delete', '/stories/1/sentences/1').to(action: :destroy, id: 1, story_id: 1)}
end
