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
end
