require 'rails_helper'

RSpec.describe "time_slots/show", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!(
      :start_time => "Start Time",
      :end_time => "End Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Start Time/)
    expect(rendered).to match(/End Time/)
  end
end
