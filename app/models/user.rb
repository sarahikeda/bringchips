class User < ActiveRecord::Base
  has_secure_password
  has_many :occasions, class_name: "Occasion", foreign_key: :attendee_id
  has_many :events, through: :occasions
  has_many :created_events, class_name: "Event", foreign_key: :creator_id
  has_many :dishes, through: :occasions

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
end
