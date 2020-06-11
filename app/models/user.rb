class User < ApplicationRecord

  has_many :events, foreign_key: "creator", class_name: "Event"
  has_many :user_attendees, foreign_key: :attendee_id
  has_many :attended_events, through: :user_attendees

  def upcoming_events
    self.attended_events.where("events.date > ?", Time.current)
  end

  def previous_events
    self.attended_events.where("events.date < ?", Time.current)
  end
end
