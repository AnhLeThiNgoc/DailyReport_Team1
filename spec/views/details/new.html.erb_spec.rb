require 'spec_helper'

describe "details/new" do
  before(:each) do
    assign(:detail, stub_model(Detail,
      :report_id => 1,
      :catalog_id => 1,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => details_path, :method => "post" do
      assert_select "input#detail_report_id", :name => "detail[report_id]"
      assert_select "input#detail_catalog_id", :name => "detail[catalog_id]"
      assert_select "textarea#detail_content", :name => "detail[content]"
    end
  end
end
