require 'rails_helper'

RSpec.describe "bands/new", type: :view do
  before(:each) do
    assign(:band, Band.new(
      :index => "MyString",
      :show => "MyString"
    ))
  end

  it "renders new band form" do
    render

    assert_select "form[action=?][method=?]", bands_path, "post" do

      assert_select "input#band_index[name=?]", "band[index]"

      assert_select "input#band_show[name=?]", "band[show]"
    end
  end
end
