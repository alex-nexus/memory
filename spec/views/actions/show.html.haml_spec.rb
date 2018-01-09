require 'spec_helper'

describe "actions/show" do
  before(:each) do
    @action = assign(:action, stub_model(Action,
      :name => "Name",
      :hide_object => "",
      :hide_price => "",
      :hide_url => "",
      :hide_end_time => "",
      :hide_people => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
