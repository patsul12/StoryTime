class Story < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user
  has_many :sentences
end
