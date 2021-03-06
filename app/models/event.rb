class Event < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  has_many :occasions
  has_many :attendees, through: :occasions, source: :attendee
  has_many :dishes, through: :occasions

  validates :date, presence: true
end
