# Adding time segments to TimeSlot class
class AddStartAndEndTimeToTimeSlot < ActiveRecord::Migration
  def change
    add_column :time_slots, :start_time, :datetime
    add_column :time_slots, :end_time, :datetime
  end
end
