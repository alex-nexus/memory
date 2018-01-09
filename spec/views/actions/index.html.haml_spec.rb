require 'spec_helper'

describe "actions/index" do
  before(:each) do
    assign(:actions, [
      stub_model(Action,
        :name => "Name",
        :hide_object => "",
        :hide_price => "",
        :hide_url => "",
        :hide_end_time => "",
        :hide_people => ""
      ),
      stub_model(Action,
        :name => "Name",
        :hide_object => "",
        :hide_price => "",
        :hide_url => "",
        :hide_end_time => "",
        :hide_people => ""
      )
    ])
  end

  it "renders a list of actions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
