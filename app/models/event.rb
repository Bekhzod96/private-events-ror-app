class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :user_attandees, foreign_key: :attended_event_id
  has_many :attendees, through: :user_attandees, source: :users
end
