class ChangeEvents < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.remove :id_head
      t.string :id_head, default: "", null: false
    end
  end
end
