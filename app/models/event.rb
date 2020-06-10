class Event < ApplicationRecord
  belongs_to :user, :foreign_key => 'creator'
  has_many :user_attendees
  # has_many :users, through: :user_attendees
end
