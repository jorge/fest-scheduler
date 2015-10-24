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
class Venue < ActiveRecord::Base
  attr_readonly :name
  attr_readonly :address

  has_many :show_sets
end
