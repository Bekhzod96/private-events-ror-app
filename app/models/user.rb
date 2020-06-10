class User < ApplicationRecord
	has_many :events, class_name: "Event", foreign_key: "creator"
  has_many :user_attendees
  # has_and_belongs_to_many :events, through: :user_attendees

  # has_many :user_attendees, foreign_key: :post_author_id
  # has_many :authored_posts, through: :user_attendees
  # has_many :edited_posts, foreign_key: :editor_id, class_name: "Post"
end
