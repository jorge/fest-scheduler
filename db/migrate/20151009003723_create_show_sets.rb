class CreateShowSets < ActiveRecord::Migration
  def change
    create_table :show_sets do |t|
      t.date :date
      t.integer :band_id
      t.integer :venue_id
      t.integer :time_slot_id

      t.timestamps null: false
    end
  end
end
