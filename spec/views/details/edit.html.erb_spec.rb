require 'spec_helper'

describe "details/edit" do
  before(:each) do
    @detail = assign(:detail, stub_model(Detail,
      :report_id => 1,
      :catalog_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => details_path(@detail), :method => "post" do
      assert_select "input#detail_report_id", :name => "detail[report_id]"
      assert_select "input#detail_catalog_id", :name => "detail[catalog_id]"
      assert_select "textarea#detail_content", :name => "detail[content]"
    end
  end
end
