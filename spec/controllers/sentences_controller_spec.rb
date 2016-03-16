require 'rails_helper'

RSpec.describe SentencesController, type: :controller do
  it { should route('get', '/sentences').to(action: :index)}
  it { should route('post', '/sentences').to(action: :create)}
  it { should route('get', '/sentences/new').to(action: :new)}
  it { should route('get', '/sentences/1').to(action: :show, id: 1)}
  it { should route('get', '/sentences/1/edit').to(action: :edit, id: 1)}
  it { should route('patch', '/sentences/1').to(action: :update, id: 1)}
  it { should route('put', '/sentences/1').to(action: :update, id: 1)}
  it { should route('delete', '/sentences/1').to(action: :destroy, id: 1)}
end
