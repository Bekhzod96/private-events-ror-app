class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :date
      t.string :datetime
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
