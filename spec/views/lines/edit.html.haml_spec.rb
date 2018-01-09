require 'spec_helper'

describe "lines/edit" do
  before(:each) do    
    @line = FactoryGirl.create(:line)
  end

  it "renders the edit line form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lines_path(@line), :method => "post" do
      assert_select "input#line_people", :name => "line[people]"
      assert_select "select#line_action_id", :name => "line[action_id]"
      assert_select "input#line_object", :name => "line[object]"
      assert_select "input#line_place", :name => "line[place]"
      assert_select "input#line_price", :name => "line[price]"
      assert_select "input#line_photo", :name => "line[photo]"
      assert_select "input#line_url", :name => "line[url]"
      assert_select "textarea#line_note", :name => "line[note]"
    end
  end
end
