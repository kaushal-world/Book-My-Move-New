require 'spec_helper'

describe "movetypes/new" do
  before(:each) do
    assign(:movetype, stub_model(Movetype,
      :movetype_id => 1,
      :movetype_name => "MyString",
      :movetype_desc => "MyString"
    ).as_new_record)
  end

  it "renders new movetype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movetypes_path, "post" do
      assert_select "input#movetype_movetype_id[name=?]", "movetype[movetype_id]"
      assert_select "input#movetype_movetype_name[name=?]", "movetype[movetype_name]"
      assert_select "input#movetype_movetype_desc[name=?]", "movetype[movetype_desc]"
    end
  end
end
