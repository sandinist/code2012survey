require 'spec_helper'

describe "surveys/show" do
  before(:each) do
    @survey = assign(:survey, stub_model(Survey,
      :why => "MyText",
      :how_year => 1,
      :locale => "Locale",
      :languages => "Languages",
      :free_comment => "MyText",
      :app_name => "App Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Locale/)
    rendered.should match(/Languages/)
    rendered.should match(/MyText/)
    rendered.should match(/App Name/)
  end
end
