require 'rails_helper'

RSpec.describe StoriesController, type: :controller do
  it { should route('get', '/').to(action: :index)}
  it { should route('post', '/stories').to(action: :create)}
  it { should route('get', '/stories/new').to(action: :new)}
  it { should route('get', '/stories/1').to(action: :show, id: 1)}
  it { should route('get', '/stories/1/edit').to(action: :edit, id: 1)}
  it { should route('patch', '/stories/1').to(action: :update, id: 1)}
  it { should route('put', '/stories/1').to(action: :update, id: 1)}
  it { should route('delete', '/stories/1').to(action: :destroy, id: 1)}
end
