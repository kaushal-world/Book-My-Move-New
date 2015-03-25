require 'spec_helper'

describe "movetypes/show" do
  before(:each) do
    @movetype = assign(:movetype, stub_model(Movetype,
      :movetype_id => 1,
      :movetype_name => "Movetype Name",
      :movetype_desc => "Movetype Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Movetype Name/)
    rendered.should match(/Movetype Desc/)
  end
end
