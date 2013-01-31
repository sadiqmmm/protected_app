require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :title => "MyString",
      :login => "MyString",
      :password => "MyString",
      :login_url => "MyString",
      :notes => "MyText",
      :folder_id => 1
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_title", :name => "item[title]"
      assert_select "input#item_login", :name => "item[login]"
      assert_select "input#item_password", :name => "item[password]"
      assert_select "input#item_login_url", :name => "item[login_url]"
      assert_select "textarea#item_notes", :name => "item[notes]"
      assert_select "input#item_folder_id", :name => "item[folder_id]"
    end
  end
end
