# == Schema Information
#
# Table name: time_slots
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  start_time :datetime
#  end_time   :datetime
#  band_id    :integer
#  venue_id   :integer
#

require 'rails_helper'

tags = {
  model: :time_slot,
  spec: :model
}

RSpec.describe TimeSlot, tags do
  subject(:time_slot) { described_class.new }

  it 'has readonly start_time' do
    is_expected.to have_readonly_attribute(:start_time)
  end
  it 'has readonly end_time' do
    is_expected.to have_readonly_attribute(:end_time)
  end

  it 'belongs to band' do
    is_expected.to belong_to(:band)
  end

  it 'belongs to venue' do
    is_expected.to belong_to(:venue)
  end
end
