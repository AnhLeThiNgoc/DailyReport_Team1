require 'spec_helper'

describe "details/index" do
  before(:each) do
    assign(:details, [
      stub_model(Detail,
        :report_id => 1,
        :catalog_id => 2,
        :content => "MyText"
      ),
      stub_model(Detail,
        :report_id => 1,
        :catalog_id => 2,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
