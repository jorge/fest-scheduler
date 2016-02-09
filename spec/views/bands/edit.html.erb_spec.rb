require 'rails_helper'

RSpec.describe "bands/edit", type: :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :index => "MyString",
      :show => "MyString"
    ))
  end

  it "renders the edit band form" do
    render

    assert_select "form[action=?][method=?]", band_path(@band), "post" do

      assert_select "input#band_index[name=?]", "band[index]"

      assert_select "input#band_show[name=?]", "band[show]"
    end
  end
end
