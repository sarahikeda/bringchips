class Occasion < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :dishes
end
