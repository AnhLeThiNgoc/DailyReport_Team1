require 'spec_helper'

describe "details/show" do
  before(:each) do
    @detail = assign(:detail, stub_model(Detail,
      :report_id => 1,
      :catalog_id => 2,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
