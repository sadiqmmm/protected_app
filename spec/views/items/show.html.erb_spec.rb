require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :title => "Title",
      :login => "Login",
      :password => "Password",
      :login_url => "Login Url",
      :notes => "MyText",
      :folder_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Login/)
    rendered.should match(/Password/)
    rendered.should match(/Login Url/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
