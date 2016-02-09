require 'rails_helper'

RSpec.describe "bands/show", type: :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :index => "Index",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Index/)
    expect(rendered).to match(/Show/)
  end
end
