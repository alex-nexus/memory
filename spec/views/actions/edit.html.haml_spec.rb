require 'spec_helper'

describe "actions/edit" do
  before(:each) do
    @action = assign(:action, stub_model(Action,
      :name => "MyString",
      :hide_object => "",
      :hide_price => "",
      :hide_url => "",
      :hide_end_time => "",
      :hide_people => ""
    ))
  end

  it "renders the edit action form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => actions_path(@action), :method => "post" do
      assert_select "input#action_name", :name => "action[name]"
      assert_select "input#action_hide_object", :name => "action[hide_object]"
      assert_select "input#action_hide_price", :name => "action[hide_price]"
      assert_select "input#action_hide_url", :name => "action[hide_url]"
      assert_select "input#action_hide_end_time", :name => "action[hide_end_time]"
      assert_select "input#action_hide_people", :name => "action[hide_people]"
    end
  end
end
