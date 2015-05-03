class Occasion < ActiveRecord::Base
  belongs_to :attendee, class_name: "User"
  belongs_to :event
  belongs_to :dish
end
