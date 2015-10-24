# time slot belongs_to show_set
class AddShowSetIdToTimeSlot < ActiveRecord::Migration
  def change
    add_reference :time_slots, :show_set, index: true, foreign_key: true
  end
end
