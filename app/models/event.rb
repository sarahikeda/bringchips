class Event < ActiveRecord::Base
  has_many :occasions
  has_many :users, through: :occasions
  belongs_to :creator, class_name: 'User'
end
