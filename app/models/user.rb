class User < ActiveRecord::Base
  has_secure_password

  has_many :occasions
  has_many :events, through: :occasions
  has_many :dishes

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
end
