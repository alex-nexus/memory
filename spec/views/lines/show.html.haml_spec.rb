require 'spec_helper'

describe "lines/show" do
  before(:each) do
    @line = FactoryGirl.create(:line)
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/People/)
    rendered.should match(/Action/)
    rendered.should match(/Object/)
    rendered.should match(/Place/)
    rendered.should match(/Photo/)
    rendered.should match(/Url/)
    rendered.should match(/Note/)
  end
end
