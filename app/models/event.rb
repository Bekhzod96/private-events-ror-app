class Event < ApplicationRecord
  belongs_to :user, :foreign_key => 'creator'
  has_many :user_attendees
  # has_many :users, through: :user_attendees

  # has_many :user_attendees, foreign_key: :event_attendee_id
  # has_many :atendees, through: :user_attendees, source: :event_creator
  # belongs_to :creator, class_name: "User"
end
