# == Schema Information
#
# Table name: time_slots
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  venue_id   :integer
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TimeSlot < ActiveRecord::Base
  attr_readonly :start_time
  attr_readonly :end_time

  belongs_to :band
  belongs_to :venue
end
