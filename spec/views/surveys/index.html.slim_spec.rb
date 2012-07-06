require 'spec_helper'

describe "surveys/index" do
  before(:each) do
    assign(:surveys, [
      stub_model(Survey,
        :why => "MyText",
        :how_year => 1,
        :locale => "Locale",
        :languages => "Languages",
        :free_comment => "MyText",
        :app_name => "App Name"
      ),
      stub_model(Survey,
        :why => "MyText",
        :how_year => 1,
        :locale => "Locale",
        :languages => "Languages",
        :free_comment => "MyText",
        :app_name => "App Name"
      )
    ])
  end

  it "renders a list of surveys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
    assert_select "tr>td", :text => "Languages".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "App Name".to_s, :count => 2
  end
end
