require 'spec_helper'

describe "movetypes/index" do
  before(:each) do
    assign(:movetypes, [
      stub_model(Movetype,
        :movetype_id => 1,
        :movetype_name => "Movetype Name",
        :movetype_desc => "Movetype Desc"
      ),
      stub_model(Movetype,
        :movetype_id => 1,
        :movetype_name => "Movetype Name",
        :movetype_desc => "Movetype Desc"
      )
    ])
  end

  it "renders a list of movetypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Movetype Name".to_s, :count => 2
    assert_select "tr>td", :text => "Movetype Desc".to_s, :count => 2
  end
end
