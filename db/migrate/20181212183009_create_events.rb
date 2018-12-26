class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.integer :level, null: false
      t.date :ev_date, null: false
      t.integer :place
    end
  end
end
