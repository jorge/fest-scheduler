require 'rails_helper'

RSpec.describe "time_slots/edit", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!(
      :start_time => "MyString",
      :end_time => "MyString"
    ))
  end

  it "renders the edit time_slot form" do
    render

    assert_select "form[action=?][method=?]", time_slot_path(@time_slot), "post" do

      assert_select "input#time_slot_start_time[name=?]", "time_slot[start_time]"

      assert_select "input#time_slot_end_time[name=?]", "time_slot[end_time]"
    end
  end
end
