# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Venue, type: :model do
  subject(:venue) { described_class.new }

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly address' do
    is_expected.to have_readonly_attribute(:address)
  end

  it 'has many show_sets' do
    is_expected.to have_many(:show_sets)
  end
end
