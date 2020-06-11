class ChangeUserEnentId < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_attendees, :user_id, :attendee_id
    rename_column :user_attendees, :event_id, :attended_event_id
    rename_column :events, :creator, :creator_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
