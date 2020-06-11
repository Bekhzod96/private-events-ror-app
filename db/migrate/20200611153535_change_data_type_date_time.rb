class ChangeDataTypeDateTime < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :date, :datetime 
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
