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

require 'rails_helper'

tags = {
  model: :show_set,
  type: :model
}

RSpec.describe ShowSet, tags do
  subject(:show_set) { described_class.new }

  it 'has readonly date' do
    is_expected.to have_readonly_attribute(:date)
  end

  it 'has readonly band_id' do
    is_expected.to have_readonly_attribute(:band_id)
  end

  it 'has readonly venue_id' do
    is_expected.to have_readonly_attribute(:venue_id)
  end

  it 'belongs to band' do
    is_expected.to belong_to(:band)
  end

  it 'belongs to venue' do
    is_expected.to belong_to(:venue)
  end

  it 'has many time_slots' do
    is_expected.to have_many(:time_slots)
  end
end
