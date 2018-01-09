require 'spec_helper'

describe "lines/index" do
  before(:each) do
    @lines = []
    @lines << FactoryGirl.create(:line)
    @lines << FactoryGirl.create(:line)
  end

  it "renders a list of lines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => @lines.first.sentence, :count => 1
    assert_select "tr>td", :text => @lines.last.sentence, :count => 1    
  end
end
