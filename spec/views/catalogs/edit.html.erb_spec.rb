require 'spec_helper'

describe "catalogs/edit" do
  before(:each) do
    @catalog = assign(:catalog, stub_model(Catalog,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit catalog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => catalogs_path(@catalog), :method => "post" do
      assert_select "input#catalog_name", :name => "catalog[name]"
      assert_select "textarea#catalog_content", :name => "catalog[content]"
    end
  end
end
