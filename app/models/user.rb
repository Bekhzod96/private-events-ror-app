class User < ApplicationRecord
	has_many :events, class_name: "Event", foreign_key: "creator"
  has_many :user_attendees
  has_many :events, through: :user_attendees
end
