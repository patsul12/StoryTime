class User < ActiveRecord::Base
  validates :username, presence: true
  has_many :sentences
  has_many :stories

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
