require 'rails_helper'

RSpec.describe "bands/index", type: :view do
  before(:each) do
    assign(:bands, [
      Band.create!(
        :index => "Index",
        :show => "Show"
      ),
      Band.create!(
        :index => "Index",
        :show => "Show"
      )
    ])
  end

  it "renders a list of bands" do
    render
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
  end
end
