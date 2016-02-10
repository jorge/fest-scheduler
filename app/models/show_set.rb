# == Schema Information
#
# Table name: show_sets
#
#  id           :integer          not null, primary key
#  date         :date
#  band_id      :integer
#  venue_id     :integer
#  time_slot_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ShowSet < ActiveRecord::Base
  attr_readonly :date
  attr_readonly :band_id
  attr_readonly :venue_id
  attr_readonly :time_slot_id

  belongs_to :band
  belongs_to :venue
  belongs_to :time_slot
end
