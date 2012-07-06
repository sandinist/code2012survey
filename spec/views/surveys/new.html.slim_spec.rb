require 'spec_helper'

describe "surveys/new" do
  before(:each) do
    assign(:survey, stub_model(Survey,
      :why => "MyText",
      :how_year => 1,
      :locale => "MyString",
      :languages => "MyString",
      :free_comment => "MyText",
      :app_name => "MyString"
    ).as_new_record)
  end

  it "renders new survey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surveys_path, :method => "post" do
      assert_select "textarea#survey_why", :name => "survey[why]"
      assert_select "input#survey_how_year", :name => "survey[how_year]"
      assert_select "input#survey_locale", :name => "survey[locale]"
      assert_select "input#survey_languages", :name => "survey[languages]"
      assert_select "textarea#survey_free_comment", :name => "survey[free_comment]"
      assert_select "input#survey_app_name", :name => "survey[app_name]"
    end
  end
end
