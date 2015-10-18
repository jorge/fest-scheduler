# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

tags = {
  model: :band,
  type: :model
}

RSpec.describe Band, tags do
  subject(:band) { described_class.new }

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has many show_sets' do
    is_expected.to have_many(:show_sets )
  end
end
