require 'rails_helper'

RSpec.describe Sentence, type: :model do
  it { should belong_to :user }
  it { should validate_presence_of :content }
  it { should belong_to :story }
  it { should validate_presence_of :image_url }
end
