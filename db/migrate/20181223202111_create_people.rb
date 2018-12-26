class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :surname
      t.string :name
      t.string :father_name
      t.string :universitat
      t.string :fakultet
      t.integer :course
      t.string :group
      t.string :ssilka
      t.integer :id_head

      t.timestamps
    end
  end
end
