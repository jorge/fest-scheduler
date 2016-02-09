# == Schema Information
#
# Table name: time_slots
#
#  id          :integer          not null, primary key
#  start_time  :datetime
#  end_time    :datetime
#  show_set_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TimeSlot < ActiveRecord::Base
  attr_readonly :start_time
  attr_readonly :end_time
  attr_readonly :show_set_id

  has_many :show_sets

  def formatted_start_time
    start_time.localtime.strftime('%m/%d %l:%M')
  end

  def formatted_end_time
    end_time.localtime.strftime('%m/%d %l:%M')
  end
end
