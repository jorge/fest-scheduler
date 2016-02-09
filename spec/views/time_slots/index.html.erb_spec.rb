require 'rails_helper'

RSpec.describe "time_slots/index", type: :view do
  before(:each) do
    assign(:time_slots, [
      TimeSlot.create!(
        :start_time => "Start Time",
        :end_time => "End Time"
      ),
      TimeSlot.create!(
        :start_time => "Start Time",
        :end_time => "End Time"
      )
    ])
  end

  it "renders a list of time_slots" do
    render
    assert_select "tr>td", :text => "Start Time".to_s, :count => 2
    assert_select "tr>td", :text => "End Time".to_s, :count => 2
  end
end
