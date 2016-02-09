# Swapping association
class AddTimeSlotIdToShowSet < ActiveRecord::Migration
  def change
    remove_column :time_slots, :show_set_id
  end
end
