class Sentence < ActiveRecord::Base
  validates :content, :image_url, presence: true
  belongs_to :user
  belongs_to :story
end
