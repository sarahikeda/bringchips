class Dish < ActiveRecord::Base
  belongs_to :user
  has_many :occasions
  has_many :events, through: :occasions
end
