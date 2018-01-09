require 'spec_helper'

describe "actions/new" do
  before(:each) do
    assign(:action, stub_model(Action,
      :name => "MyString",
      :hide_object => "",
      :hide_price => "",
      :hide_url => "",
      :hide_end_time => "",
      :hide_people => ""
    ).as_new_record)
  end

  it "renders new action form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => actions_path, :method => "post" do
      assert_select "input#action_name", :name => "action[name]"
      assert_select "input#action_hide_object", :name => "action[hide_object]"
      assert_select "input#action_hide_price", :name => "action[hide_price]"
      assert_select "input#action_hide_url", :name => "action[hide_url]"
      assert_select "input#action_hide_end_time", :name => "action[hide_end_time]"
      assert_select "input#action_hide_people", :name => "action[hide_people]"
    end
  end
end
