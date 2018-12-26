class CreateJoinTableEventsPeople < ActiveRecord::Migration[5.2]
  def change
    create_join_table :events, :people do |t|
      # t.index [:event_id, :person_id]
      # t.index [:person_id, :event_id]
    end
  end
end
