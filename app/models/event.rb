class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :user_attendees, foreign_key: :attended_event_id
  has_many :attendees, through: :user_attendees

  scope :past, -> { where('date < ?', Time.current) }
  # Ex:- scope :active, -> {where(:active => true)}
  # Select data as prev_event where data < crent_time from events

  scope :future, -> { where('date > ?', Time.current) }
  # Ex:- scope :active, -> {where(:active => true)}
end
