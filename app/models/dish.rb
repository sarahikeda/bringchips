class Dish < ActiveRecord::Base
  has_many :occasions
  has_many :events, through: :occasions
  has_many :attendees, through: :occasions, source: :attendee
end
