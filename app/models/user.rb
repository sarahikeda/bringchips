class User < ActiveRecord::Base
  has_secure_password

  has_many :occasions
  has_many :events, through: :occasions
  has_many :dishes
end
