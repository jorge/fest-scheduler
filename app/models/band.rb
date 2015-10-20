# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Band < ActiveRecord::Base
  attr_readonly :name
  has_many :show_sets
  has_many :time_slots
end
